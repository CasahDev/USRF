import 'dart:convert';

import 'package:http/http.dart';

import 'api.dart';
import 'enums.dart';

class Match {
  static Map<int, Formation> formations = {};

  /// team : l'id FFF de l'équipe concernée
  ///
  /// Récupère le logo de l'équipe à partir de l'API de la FFF
  static Future<Response> getTeamLogo(int teamId) async {
    var district = await Api.getFfaApi("clubs.json?cdg.cg_no=30") as Map<String, dynamic>;
    var club = district.values.firstWhere((element) => element["cl_no"] == teamId);
    return club["logo"];
  }

  /// team : l'équipe concernée
  ///
  /// Récupère le dernier match de l'équipe (commencé ou terminé)
  static getMatchByTeam(String team) async {
    return await Api.get("matchs/$team");
  }

  /// id : l'id du match
  ///
  /// Récupère le match correspondant à l'id
  ///
  /// Renvoie une Map contenant les informations du match
  static Future<Response> getMatchById(int id) async {
    return await Api.get("matchs/$id");
  }

  /// team : l'équipe concernée
  ///
  /// Récupère le dernier match de l'équipe (commencé ou terminé)
  ///
  /// Renvoie l'id du match
  static Future<Response> getLastMatchId(String team) async {
    return await Api.get("match/$team");
  }

  /// matchId : l'id du match
  ///
  /// Récupère la composition du match
  ///
  /// Renvoie une Map contenant les informations des joueurs
  static Future<Response> getLineupByMatchId(int matchId) async {
    return await Api.get("match/played/$matchId");
  }

  /// matchId : l'id du match
  ///
  /// Récupère l'historique du match
  ///
  /// Renvoie une Map contenant les événements du match
  ///
  /// (id, author, date, action_type, additional_info(player, match, team))
  static Future<Response> getMatchHistoryById(int matchId) async {
    return await Api.get("match/history/$matchId");
  }

  /// matchId : l'id du match
  ///
  /// Annule la dernière action du match
  ///
  /// Renvoie l'identifiant de l'action annulée
  static Future<Response> revertLatchAction(int matchId) async {
    return await Api.get("match/revert/$matchId");
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
  static Future<Response> changeGameState(int matchId) async {
    // TODO : Mettre à jour l'état du match
    return await Api.patch("match/state/$matchId", {});
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

  static String getMatchState(Map<String, dynamic> match) {
    return switch (match["state"]) {
      "firstHalf" =>
        match["time"] < 45 ? "${match["time"]}'" : "45+${match["time"] - 45}'",
      "secondHalf" =>
        match["time"] < 90 ? "${match["time"]}'" : "90+${match["time"] - 90}'",
      "halfTime" => "Mi-temps",
      "penalties" => "Tirs au but",
      _ => "Match non commencé"
    };
  }
}
