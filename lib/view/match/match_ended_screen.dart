import 'package:flutter/material.dart';
import 'package:usrf/view/match/interface/history_interface.dart';

import 'interface/lineup_interface.dart';
import '../../logic/Data/usages/match_api.dart' as matchlogic;

class MatchEndedScreen extends StatefulWidget {
  final int matchId;

  const MatchEndedScreen({
    super.key,
    required this.matchId,
  });

  @override
  State<StatefulWidget> createState() => _MatchEndedState();
}

class _MatchEndedState extends State<MatchEndedScreen> {
  late int matchId;

  Map<String, dynamic> match = {
    "team": "Loading...",
    "opponent": "Loading...",
    "score": 0,
    "opponentScore": 0,
    "ended": false,
  };

  _MatchEndedState() {
    matchId = widget.matchId;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> match = {
      "team": "Loading...",
      "opponent": "Loading...",
      "score": 0,
      "opponentScore": 0,
      "ended": false,
    };
    matchlogic.Match.getMatchById(matchId).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          match = value.body as Map<String, dynamic>;
        }
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("match ${match["team"]} - ${match["opponent"]}"),
      ),
      body: Center(
        child: Column(
          children: [
            LineupInterface(matchId: matchId),
            HistoryInterface(matchId: matchId),
          ],
        ),
      ),
    );
  }
}
