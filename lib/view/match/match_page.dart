import 'package:flutter/material.dart';
import 'package:usrf/logic/Data/usages/match_api.dart';
import 'package:usrf/logic/models/GameState.dart';
import 'package:usrf/logic/models/team.dart';
import 'package:usrf/view/match/match_ended_screen.dart';
import 'package:usrf/view/match/match_playing_screen.dart';
import 'package:usrf/logic/models/match.dart';

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
  Match match = Match();

  _MatchState(int matchId) {
    match.id = matchId;
  }

  @override
  Widget build(BuildContext context) {
    match.opponentScore = 0;
    match.teamScore = 0;
    match.team = Team(0, "Loading...", 0);
    match.opponent = Team(0, "Loading...", 0);
    match.state = GameState.notStarted;
    match.address = "Loading...";
    match.coach = "Loading...";
    match.date = DateTime(2024);
    match.isCup = false;
    match.isHome = false;
    match.time = 0;

    MatchApi.getMatchById(match.id).then((value) {
      setState(() {
        match = value;
      });
    });

    return _getMatchScreen(match, context);
  }

  _getMatchScreen(Match match, BuildContext context) {
    if (match.state != GameState.end) {
      return MatchPlayingScreen(matchId: match.id);
    } else {
      return MatchEndedScreen(matchId: match.id);
    }
  }
}
