import 'package:flutter/material.dart';
import 'package:usrf/ViewModel/match_page_viewmodel.dart';
import 'package:usrf/models/GameState.dart';
import 'package:usrf/view/match/match_ended_screen.dart';
import 'package:usrf/view/match/match_playing_screen.dart';
import 'package:usrf/models/match.dart';

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
  late final MatchPageViewModel _viewModel;

  _MatchState(int matchId) {
    _viewModel = MatchPageViewModel(matchId);
  }

  @override
  Widget build(BuildContext context) {
    return _getMatchScreen(_viewModel.match, context);
  }

  _getMatchScreen(Match match, BuildContext context) {
    if (match.state != GameState.end) {
      return MatchPlayingScreen(matchId: match.id);
    } else {
      return MatchEndedScreen(matchId: match.id);
    }
  }
}
