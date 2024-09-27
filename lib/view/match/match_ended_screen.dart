import 'package:flutter/material.dart';

import './history_interface.dart';
import 'lineup_interface.dart';
import '../../logic/match.dart' as matchlogic;

class MatchEndedScreen extends StatefulWidget {

  final int matchId;
  const MatchEndedScreen({super.key, required this.matchId,});

  @override
  State<StatefulWidget> createState() => _MatchEndedState();
}

class _MatchEndedState extends State<MatchEndedScreen> {
  late int matchId;

  Map<String, dynamic> match = {};

  _MatchEndedState() {
    matchId = widget.matchId;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> match = {};
    matchlogic.Match.getMatchById(matchId).then((value) {
      setState(() {
        match = value as Map<String, dynamic>;
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
