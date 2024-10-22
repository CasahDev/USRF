import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usrf/View/Views.dart';
import 'package:usrf/View/error_popup_interface.dart';
import 'package:usrf/api/usages/match_api.dart';
import 'package:usrf/models/formations.dart';
import 'package:usrf/models/match.dart';
import 'package:usrf/models/team.dart';

class MatchPlayingScreenViewModel extends ChangeNotifier {
  Match _match = Match();
  Views _view = Views.lineup;
  String _matchState = "";

  Views get view => _view;
  set view(value) {
    _view = value;
    notifyListeners();
  }

  String get matchState => _matchState;

  Match get match => _match;

  MatchPlayingScreenViewModel(int matchId) {
    Timer.periodic(const Duration(seconds: 30), (Timer t) {
      MatchApi.getMatchById(_match.id).then((value) {
        _match = value;
      });
      notifyListeners();
    });
  }

  String getTeamLogo(bool home) {
    String logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";

    Team team = home ? _match.team : _match.opponent;
    MatchApi.getTeamLogo(team.fffId).then((value) {
      if (value.statusCode == 200) {
        logo = value.body;
      }
    });

    return logo;
  }

  void RevertLastAction(BuildContext context) {
    int statusCode = 200;

    MatchApi.revertLatchAction(match.id).then((value) {
      statusCode = value.statusCode;
    });

    if (statusCode != 200) {
      ErrorPopup.build(context, statusCode,
          "La dernière action n'a pas pu être annulée");
    }
  }

  changeSystem() {
    return AlertDialog(
        content: Column(
          children: [
            const Text("Choisissez la nouvelle formation"),
            for (var formation in Formation.values)
              ElevatedButton(
                onPressed: MatchApi.changeFormation(match.id, formation),
                child: Text(formation.name.substring(1)),
              ),
          ],
        ));
  }

  changeGameState(match) {
    MatchApi.changeGameState(match.id);
  }
}