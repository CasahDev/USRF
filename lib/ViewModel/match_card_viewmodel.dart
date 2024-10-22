import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usrf/api/usages/match_api.dart';
import 'package:usrf/models/match.dart';
import 'package:usrf/models/team.dart';

class MatchCardViewModel {
  late Match _match;

  Match get match => _match;

  MatchCardViewModel(matchId) {
    MatchApi.getMatchById(matchId).then((value) {
      _match = value;
    });
  }

  getLogo(bool isTeam) {
    String logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";
    Team team = isTeam ? _match.team : _match.opponent;
    MatchApi.getTeamLogo(team.fffId).then((value) {
      if (value.statusCode == 200) {
        logo = (value.body as Map<String, dynamic>)["logo"] as String;
      }
    });

    return logo;
  }

  Color getColor() {
    Color color;
    if (match.teamScore > match.opponentScore) {
      color = Colors.winningColor;
    } else if (match.teamScore < match.opponentScore) {
      color = Colors.losingColor;
    } else {
      color = Colors.white;
    }

    return color;
  }
}
