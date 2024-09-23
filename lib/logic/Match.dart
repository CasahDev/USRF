import 'Enums.dart';

class Match {
  static Map<int, Formation> formations = {};

  static getTeamLogo(int teamId) {
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

  static getMatchById(int id) {
    // TODO : Récupérer le match depuis le backend
    return {
      "team": "A",
      "opponent": "Chalon FC 3",
      "score": 1,
      "opponentScore": 1
    };
  }

  static getLastMatchId(String team) {
    // TODO : Récupérer le dernier match de l'équipe depuis le backend
    return 1;
  }

  static getLineupByMatchId(int matchId) {
    // TODO : Récupérer la composition du match depuis le backend
    return [{"player": "Jean Dupont", "position": "Gardien"}];
  }

  static getMatchHistoryById(int matchId) {
    // TODO : Récupérer l'historique du match depuis le backend
    return [
      {"minute": 10, "event": "But", "player": "Jean Dupont"},
      {"minute": 20, "event": "Carton jaune", "player": "Jean Dupont"}
    ];
  }


  static revertLatchAction() {
    // TODO
  }

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

  static changeFormation(int matchId, formation) {
    formations[matchId] = formation;
  }
}