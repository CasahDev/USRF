import 'package:flutter/material.dart';
import 'package:usrf/logic/Data/usages/match_api.dart';
import 'package:usrf/logic/Observer.dart';
import 'package:usrf/logic/models/GameState.dart';
import 'package:usrf/logic/models/team.dart';
import 'package:usrf/view/error_popup_interface.dart';
import 'package:usrf/view/match/interface/history_interface.dart';
import 'package:usrf/view/match/interface/lineup_interface.dart';

import 'package:usrf/logic/models/match.dart';

import 'package:usrf/logic/enums.dart';

class MatchPlayingScreen extends StatefulWidget {
  final int _matchId;

  const MatchPlayingScreen({
    super.key,
    required int matchId,
  }) : _matchId = matchId;

  @override
  State<MatchPlayingScreen> createState() => _MatchPlayingScreenState(_matchId);
}

class _MatchPlayingScreenState extends State<MatchPlayingScreen>
    implements Observer {
  late final Match _match;

  _MatchPlayingScreenState(int matchId) {
    _match.id = matchId;
  }

  @override
  Widget build(BuildContext context) {
    _match.opponentScore = 0;
    _match.teamScore = 0;
    _match.team = Team(0, "Loading...", 0);
    _match.opponent = Team(0, "Loading...", 0);
    _match.state = GameState.notStarted;
    _match.address = "Loading...";
    _match.coach = "Loading...";
    _match.date = DateTime(2024);
    _match.isCup = false;
    _match.isHome = false;
    _match.time = 0;

    Views view = Views.lineup;
    String matchState = MatchApi.getMatchState(_match);

    MatchApi.getMatchById(_match.id).then((value) {
      _match = value;
    });

    var logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";
    var opponentLogo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";

    // TODO: getTeamLogo

    MatchApi.getTeamLogo(_match.team.fffId).then((value) {
      if (value.statusCode == 200) {
        logo = value.body;
      }
    });

    MatchApi.getTeamLogo(_match.opponent.fffId).then((value) {
      if (value.statusCode == 200) {
        opponentLogo = value.body;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Match ${_match.team.name} - ${_match.opponent.name}"),
      ),
      backgroundColor: Colors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: NetworkImage(logo)),
                  Text(
                    _match.team.name,
                    style: const TextStyle(color: Colors.textColor),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("${_match.teamScore}",
                          style: const TextStyle(color: Colors.white)),
                      const Text(" - ", style: TextStyle(color: Colors.white)),
                      Text("${_match.opponentScore}",
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                  Text(
                    matchState,
                    style: const TextStyle(color: Colors.winningColor),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: NetworkImage(opponentLogo)),
                  Text(
                    _match.opponent.name,
                    style: const TextStyle(color: Colors.textColor),
                  ),
                ],
              )
            ]),
            SegmentedButton(
              segments: const [
                ButtonSegment(
                    value: Views.lineup,
                    label: Text("Composition"),
                    enabled: true,
                    icon: Icon(Icons.sports_football)),
                ButtonSegment(
                    value: Views.matchHistory,
                    label: Text("Historique"),
                    icon: Icon(Icons.history)),
              ],
              selected: <Views>{view},
              onSelectionChanged: (Set<Views> state) {
                view = state.first;
              },
            ),
            Visibility(
              visible: view == Views.lineup,
              child: LineupInterface(matchId: _match.id),
            ),
            Visibility(
              visible: view == Views.matchHistory,
              child: HistoryInterface(matchId: _match.id),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(Colors.mainButtonColor)),
              onPressed: _changeGameState(_match),
              child: Column(
                children: [
                  if (matchState == "firstHalf")
                    const Text("Mi-Temps")
                  else if (matchState == "halfTime")
                    const Text("Reprendre le match")
                  else
                    const Text("Terminer le match")
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            Colors.secondaryButtonColor)),
                    onPressed: () {
                      int statusCode = 200;

                      MatchApi.revertLatchAction(_match.id).then((value) {
                        statusCode = value.statusCode;
                      });

                      if (statusCode != 200) {
                        ErrorPopup.build(context, statusCode,
                            "La dernière action n'a pas pu être annulée");
                      }
                    },
                    child: const Text("Revenir en arrière")),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.mainButtonColor)),
                    onPressed: _changeSystem(),
                    child: const Text("Changer la formation"))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _changeSystem() {
    return AlertDialog(
        content: Column(
      children: [
        const Text("Choisissez la nouvelle formation"),
        for (var formation in Formation.values)
          ElevatedButton(
            onPressed: MatchApi.changeFormation(_match.id, formation),
            child: Text(formation.name.substring(1)),
          ),
      ],
    ));
  }

  _changeGameState(match) {
    MatchApi.changeGameState(match.id);
  }

  @override
  void update(String key, dynamic newValue) {
    setState(() {
      switch (key) {
        case "team":
          _match.team = newValue;
        case "opponent":
          _match.opponent = newValue;
        case "teamScore":
          _match.teamScore = newValue;
        case "opponentScore":
          _match.opponentScore = newValue;
        case "coach":
          _match.coach = newValue;
        case "isCup":
          _match.isCup = newValue;
        case "time":
          _match.time = newValue;
        case "address":
          _match.address = newValue;
        case "date":
          _match.date = newValue;
        case "isHome":
          _match.isHome = newValue;
        case "state":
          _match.state = newValue;
        default:
          break;
      }
    });
  }
}
