import 'package:flutter/material.dart';
import 'package:usrf/logic/Match.dart';
import 'package:usrf/view/LineupInterface.dart';

import '../logic/Enums.dart';
import 'HistoryInterface.dart';

class MatchPlayingScreen extends StatefulWidget {
  final int matchId;

  const MatchPlayingScreen(this.matchId, {super.key});

  @override
  State<MatchPlayingScreen> createState() => _MatchPlayingScreenState(matchId);
}

class _MatchPlayingScreenState extends State<MatchPlayingScreen>{
  int matchId;

  Map<String, dynamic> match = {};

  _MatchPlayingScreenState(this.matchId);

  @override
  Widget build(BuildContext context) {Views view = Views.lineup;
  String matchState = Match.getMatchState(match);

  // var logo = getTeamLogo(match["teamId"]);
  // var opponentLogo = getTeamLogo(match["opponentId"]);

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
                // Image(image: NetworkImage(logo)),
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
                // Image(image: NetworkImage(opponentLogo)),
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
            child: LineupInterface(matchId),
          ),
          Visibility(
            visible: view == Views.matchHistory,
            child: HistoryInterface(matchId),
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.mainButtonColor)),
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
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.secondaryButtonColor)),
                  onPressed: () {
                    int lastActionId = Match.revertLatchAction(matchId);
                  },
                  child: const Text("Revenir en arrière")),
              ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.mainButtonColor)),
                  onPressed: _changeSystem(),
                  child: const Text("Changer la formation"))
            ],
          )
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
                onPressed: Match.changeFormation(matchId, formation),
                child: Text(formation.name.substring(1)),
              ),
          ],
        )
    );
  }


  _changeGameState(match) {
    Match.changeGameState(matchId);
  }
}