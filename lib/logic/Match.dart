import 'Enums.dart';

class Match {
  static Map<int, Formation> formations = {};

  /// team : l'id FFF de l'équipe concernée
  /// Récupère le logo de l'équipe à partir de l'API de la FFF
  static getTeamLogo(int teamId) {
    // TODO : Récupérer le logo de l'équipe depuis l'api de la FFF
    var responseData =
    Uri.https("http://api-dofa.prd-aws.fff.fr/api/clubs.json?filter=", "")
    as Map<String, dynamic>;
    return responseData["logo"];
  }

  /// team : l'équipe concernée
  /// Récupère le dernier match de l'équipe (commencé ou terminé)
  static getMatchByTeam(String team) {
    // TODO : Récupérer les matchs de l'équipe depuis le backend
    return {
      "team": team,
      "opponent": "Chalon FC 3",
      "score": 1,
      "opponentScore": 1
    };
  }

  /// id : l'id du match
  /// Récupère le match correspondant à l'id
  /// Renvoie une Map contenant les informations du match
  static Map<String, dynamic> getMatchById(int id) {
    // TODO : Récupérer le match depuis le backend
    return {
      "team": "A",
      "opponent": "Chalon FC 3",
      "score": 1,
      "opponentScore": 1
    };
  }

  /// team : l'équipe concernée
  /// Récupère le dernier match de l'équipe (commencé ou terminé)
  /// Renvoie l'id du match
  static int getLastMatchId(String team) {
    // TODO : Récupérer le dernier match de l'équipe depuis le backend
    return 1;
  }

  /// matchId : l'id du match
  /// Récupère la composition du match
  /// Renvoie une Map contenant les informations des joueurs
  static Map<String, dynamic> getLineupByMatchId(int matchId) {
    // TODO : Récupérer la composition du match depuis le backend
    return {"player": "Jean Dupont", "position": "Gardien"};
  }

  /// matchId : l'id du match
  /// Récupère l'historique du match
  /// Renvoie une Map contenant les événements du match
  /// (id, author, date, action_type, additional_info(player, match, team))
  static getMatchHistoryById(int matchId) {
    // TODO : Récupérer l'historique du match depuis le backend
    return [
      {"minute": 10, "event": "But", "player": "Jean Dupont"},
      {"minute": 20, "event": "Carton jaune", "player": "Jean Dupont"}
    ];
  }

  /// matchId : l'id du match
  /// Annule la dernière action du match
  /// Renvoie l'identifiant de l'action annulée
  static int revertLatchAction(int matchId) {
    // TODO
    return 1;
  }

  /// event : l'événement
  /// Récupère l'image correspondant à l'événement
  /// Renvoie le chemin de l'image
  static String getImageByEventType( event) {
    return switch (event["type"]) {
    //TODO
      "addGoal" => "assets/events/goal.svg",
      "addYellowCard" => "assets/events/yellowCard.svg",
      "addRedCard" => "assets/events/redCard.svg",
      "addSubstitute" => "assets/events/substitute.svg",
      "addInjury" => "assets/events/injury.svg",
      "addPenalty" => "assets/events/penalty.svg",
      _ => ""
    };
  }

  /// matchId : l'id du match
  /// Change la formation du match
  /// Met a jour la formation dans la Map formations
  static changeFormation(int matchId, formation) {
    formations[matchId] = formation;
  }

  /// matchId : l'id du match
  /// Change l'état du match
  /// Fait un cycle (pas commencé -> premier mi-temps -> mi-temps -> deuxième mi-temps -> penalties (optionnels) -> terminé)
  static void changeGameState(int matchId) {
    // TODO : Mettre à jour l'état du match
  }
}