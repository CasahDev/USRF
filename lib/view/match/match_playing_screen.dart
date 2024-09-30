import 'package:flutter/material.dart';
import 'package:usrf/logic/match.dart' as matchlogic;
import 'package:usrf/view/error_popup_interface.dart';
import 'package:usrf/view/match/lineup_interface.dart';

import 'package:usrf/logic/enums.dart';
import 'history_interface.dart';

class MatchPlayingScreen extends StatefulWidget {
  final int matchId;

  const MatchPlayingScreen({
    super.key,
    required this.matchId,
  });

  @override
  State<MatchPlayingScreen> createState() => _MatchPlayingScreenState();
}

class _MatchPlayingScreenState extends State<MatchPlayingScreen> {
  late final int matchId;

  Map<String, dynamic> match = {
    "team": "Loading...",
    "opponent": "Loading...",
    "score": 0,
    "opponentScore": 0,
    "ended": false,
  };

  _MatchPlayingScreenState() {
    matchId = widget.matchId;
  }

  @override
  Widget build(BuildContext context) {
    Views view = Views.lineup;
    String matchState = matchlogic.Match.getMatchState(match);

    var logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";
    var opponentLogo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";

    // TODO: getTeamLogo

    matchlogic.Match.getTeamLogo(match["teamId"]).then((value) {
        if (value.statusCode == 200) {
          logo = value.body as String;
        }
    });

    matchlogic.Match.getTeamLogo(match["opponentId"]).then((value) {
        if (value.statusCode == 200) {
          opponentLogo = value.body as String;
        }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Match ${match["team"]} - ${match["opponent"]}"),
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
                    'USRF ${match["team"]}',
                    style: const TextStyle(color: Colors.textColor),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("${match['score']}",
                          style: const TextStyle(color: Colors.white)),
                      const Text(" - ", style: TextStyle(color: Colors.white)),
                      Text("${match['opponentScore']}",
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
                    match['opponent'],
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
              child: LineupInterface(matchId: matchId),
            ),
            Visibility(
              visible: view == Views.matchHistory,
              child: HistoryInterface(matchId: matchId),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(Colors.mainButtonColor)),
              onPressed: _changeGameState(match),
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

                      matchlogic.Match.revertLatchAction(matchId).then((value) {
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
            onPressed: matchlogic.Match.changeFormation(matchId, formation),
            child: Text(formation.name.substring(1)),
          ),
      ],
    ));
  }

  _changeGameState(match) {
    matchlogic.Match.changeGameState(matchId);
  }
}
