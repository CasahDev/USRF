import 'package:flutter/material.dart';
import 'package:usrf/logic/match.dart' as matchlogic;
import 'package:usrf/view/match/match_ended_screen.dart';
import 'package:usrf/view/match/match_playing_screen.dart';

class MatchScreen extends StatefulWidget {
  final int matchId;

  const MatchScreen({
    super.key,
    required this.matchId,
  });

  @override
  State<StatefulWidget> createState() => _MatchState(matchId);
}

class _MatchState extends State<MatchScreen> {
  final int matchId;

  _MatchState(this.matchId);

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
