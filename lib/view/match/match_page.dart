import 'package:flutter/material.dart';
import 'package:usrf/logic/match.dart' as matchlogic;
import 'package:usrf/view/match/match_ended_screen.dart';
import 'package:usrf/view/match/match_playing_screen.dart';

class MatchScreen extends StatefulWidget {
  final int matchId;
  const MatchScreen({super.key, required this.matchId,});

  @override
  State<StatefulWidget> createState() => _MatchState();
}

class _MatchState extends State<MatchScreen> {
  late final int matchId;

  _MatchState() {
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

    return _getMatchScreen(match, context);
  }

  _getMatchScreen(Map<String, dynamic> match, BuildContext context) {
    if (!match["ended"]) {
      return MatchPlayingScreen(matchId: matchId);
    } else {
      return MatchEndedScreen(matchId: matchId);
    }
  }
}
