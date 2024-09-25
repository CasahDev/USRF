import 'package:flutter/material.dart';

import 'HistoryInterface.dart';
import 'LineupInterface.dart';
import '../logic/Match.dart';

class MatchEndedScreen extends StatefulWidget {

  final int matchId;
  const MatchEndedScreen(this.matchId, {super.key});

  @override
  State<StatefulWidget> createState() => _MatchEndedState(matchId);
}

class _MatchEndedState extends State<MatchEndedScreen> {
  int matchId;

  Map<String, dynamic> match = {};

  _MatchEndedState(this.matchId);

  @override
  Widget build(BuildContext context) {
    match = Match.getMatchById(matchId);

    return Scaffold(
      appBar: AppBar(
        title: Text("Match ${match["team"]} - ${match["opponent"]}"),
      ),
      body: Center(
        child: Column(
          children: [
            LineupInterface(matchId),
            HistoryInterface(matchId),
          ],
        ),
      ),
    );
  }
}
