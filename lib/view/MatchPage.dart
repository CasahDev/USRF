import 'package:flutter/material.dart';
import 'package:usrf/logic/Match.dart';
import 'package:usrf/view/MatchEndendScreen.dart';
import 'package:usrf/view/MatchPlayingScreen.dart';

class MatchScreen extends StatefulWidget {
  final int matchId;
  const MatchScreen(this.matchId, {super.key});

  @override
  State<StatefulWidget> createState() => _MatchState(matchId);
}

class _MatchState extends State<MatchScreen> {
  int matchId;


  _MatchState(this.matchId);

  @override
  Widget build(BuildContext context) {
    var match = Match.getMatchById(matchId);

    return _getMatchScreen(match, context);
  }

  _getMatchScreen(Map<String, dynamic> match, BuildContext context) {
    if (!match["ended"]) {
      return MatchPlayingScreen(matchId);
    } else {
      return MatchEndedScreen(matchId);
    }
  }
}
