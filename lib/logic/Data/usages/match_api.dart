import 'package:http/http.dart';
import 'package:usrf/logic/Data/DataFactory.dart';
import 'package:usrf/logic/models/GameState.dart';

import '../../models/match.dart';

import '../../enums.dart';

class MatchApi {
  static Map<int, Formation> formations = {};

  /// team : l'id FFF de l'équipe concernée
  ///
  /// Récupère le logo de l'équipe à partir de l'API de la FFF
  static Future<Response> getTeamLogo(int teamId) async {
    var api = DataFactory.getDataGetter();
    var district =
        await api.getFfaApi("clubs.json?cdg.cg_no=30") as Map<String, dynamic>;
    var club =
        district.values.firstWhere((element) => element["cl_no"] == teamId);
    return club["logo"];
  }

  /// team : l'équipe concernée
  ///
  /// Récupère le dernier match de l'équipe (commencé ou terminé)
  static Future<Match> getMatchByTeam(String team) async {
    var api = DataFactory.getDataGetter();
    var result = await api.get("match/$team");
    Match match = Match();
    match.fromJson(result.body as Map<String, dynamic>);

    return match;
  }

  /// id : l'id du match
  ///
  /// Récupère le match correspondant à l'id
  ///
  /// Renvoie une Map contenant les informations du match
  static Future<Match> getMatchById(int id) async {
    var api = DataFactory.getDataGetter();
    var result = await api.get("matchs/$id");
    Match match = Match();
    match.fromJson(result.body as Map<String, dynamic>);
    return match;
  }

  /// team : l'équipe concernée
  ///
  /// Récupère le dernier match de l'équipe (commencé ou terminé)
  ///
  /// Renvoie l'id du match
  static Future<Match> getLastMatchId(String team) async {
    var api = DataFactory.getDataGetter();
    var result = await api.get("match/$team");
    Match match = Match();
    match.fromJson(result.body as Map<String, dynamic>);
    return match;
  }

  /// matchId : l'id du match
  ///
  /// Récupère la composition du match
  ///
  /// Renvoie une Map contenant les informations des joueurs
  static Future<Match> getLineupByMatchId(int matchId) async {
    var api = DataFactory.getDataGetter();
    var result = await api.get("match/played/$matchId");
    Match match = Match();
    match.fromJson(result.body as Map<String, dynamic>);
    return match;
  }

  /// matchId : l'id du match
  ///
  /// Récupère l'historique du match
  ///
  /// Renvoie une Map contenant les événements du match
  ///
  /// (id, author, date, action_type, additional_info(player, match, team))
  static Future<Match> getMatchHistoryById(int matchId) async {
    var api = DataFactory.getDataGetter();
    var result = await api.get("match/history/$matchId");
    Match match = Match();
    match.fromJson(result.body as Map<String, dynamic>);
    return match;
  }

  /// matchId : l'id du match
  ///
  /// Annule la dernière action du match
  ///
  /// Renvoie l'identifiant de l'action annulée
  static Future<Response> revertLatchAction(int matchId) async {
    var api = DataFactory.getDataGetter();
    return await api.get("match/revert/$matchId");
  }

  /// event : l'événement
  ///
  /// Récupère l'image correspondant à l'événement
  ///
  /// Renvoie le chemin de l'image
  static String getImageByEventType(event) {
    return switch (event["type"]) {
      "ADD_GOAL" => "assets/events/goal.svg",
      "ADD_YELLOW_CARD" => "assets/events/yellowCard.svg",
      "ADD_RED_CARD" => "assets/events/redCard.svg",
      "SWITCH_PLAYER" => "assets/events/substitute.svg",
      "ADD_INJURY" => "assets/events/injury.svg",
      "ADD_PENALTY" => "assets/events/penalty.svg",
      _ => ""
    };
  }

  /// matchId : l'id du match
  ///
  /// Change la formation du match
  ///
  /// Met a jour la formation dans la Map formations
  static changeFormation(int matchId, formation) {
    // TODO : Mettre à jour la formation du match
    formations[matchId] = formation;
  }

  /// matchId : l'id du match
  ///
  /// Change l'état du match
  ///
  /// Fait un cycle (pas commencé -> premier mi-temps -> mi-temps -> deuxième mi-temps -> penalties (optionnels) -> terminé)
  static Future<Response> changeGameState(Match match) async {
    var api = DataFactory.getDataGetter();

    GameState newState;
    switch (match.state) {
      case GameState.notStarted:
        newState = GameState.firstHalf;
      case GameState.firstHalf:
        newState = GameState.halfTime;
      case GameState.halfTime:
        newState = GameState.secondHalf;
      case GameState.secondHalf:
        if (match.isCup) {
          newState = GameState.penalties;
        } else {
          newState = GameState.end;
        }
      case GameState.penalties:
        newState = GameState.end;
      default:
        newState = GameState.notStarted;
    }

    match.state = newState;

    return await api.patch("match/state/${match.id}", {"state": newState});
  }

  static Map<Positions, List<String>> positions = {
    Positions.goalkeeper: ["Goalkeeper"],
    Positions.defender: ["CenterBack", "RightBack", "LeftBack"],
    Positions.midfielder: [
      "DefensiveMidfielder",
      "CentralMidfielder",
      "AttackingMidfielder"
    ],
    Positions.forward: ["Striker", "LeftWinger", "RightWinger"],
    Positions.substitute: ["Substitute"]
  };

  static String getMatchState(Match match) {
    return switch (match.state) {
      GameState.firstHalf =>
        match.time < 45 ? "${match.time}'" : "45+${match.time - 45}'",
      GameState.secondHalf =>
        match.time < 90 ? "${match.time}'" : "90+${match.time - 90}'",
      GameState.halfTime => "Mi-temps",
      GameState.penalties => "Tirs au but",
      _ => "Match non commencé"
    };
  }
}
