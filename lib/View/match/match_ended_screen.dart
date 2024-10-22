import 'package:flutter/material.dart';
import 'package:usrf/ViewModel/match_ended_screen_viewmodel.dart';
import 'package:usrf/view/match/interface/history_interface.dart';

import 'interface/lineup_interface.dart';

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
  late MatchEndedScreenViewModel _viewModel;

  _MatchEndedState() {
    _viewModel = MatchEndedScreenViewModel(widget.matchId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("match ${_viewModel.match.team.name} - ${_viewModel.match.opponent.name}"),
      ),
      body: Center(
        child: Column(
          children: [
            LineupInterface(matchId: _viewModel.match.id),
            HistoryInterface(matchId: _viewModel.match.id),
          ],
        ),
      ),
    );
  }
}
