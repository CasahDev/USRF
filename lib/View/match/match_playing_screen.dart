import 'package:flutter/material.dart';
import 'package:usrf/ViewModel/match_playing_screen_viewmodel.dart';
import 'package:usrf/view/Views.dart';
import 'package:usrf/view/match/interface/history_interface.dart';
import 'package:usrf/view/match/interface/lineup_interface.dart';

class MatchPlayingScreen extends StatefulWidget {
  final int matchId;

  const MatchPlayingScreen({
    super.key,
    required int matchId,
  }) : matchId = matchId;

  @override
  State<MatchPlayingScreen> createState() => _MatchPlayingScreenState(matchId);
}

class _MatchPlayingScreenState extends State<MatchPlayingScreen> {
  late final MatchPlayingScreenViewModel _viewModel;

  _MatchPlayingScreenState(int matchId) {
    _viewModel = MatchPlayingScreenViewModel(matchId);
  }

  @override
  Widget build(BuildContext context) {

    // TODO: getTeamLogo
    String logo = _viewModel.getTeamLogo(true);
    String opponentLogo = _viewModel.getTeamLogo(false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Match ${_viewModel.match.team.name} - ${_viewModel.match.opponent.name}"),
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
                  Image(image: NetworkImage(logo)),
                  Text(
                    _viewModel.match.team.name,
                    style: const TextStyle(color: Colors.textColor),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("${_viewModel.match.teamScore}",
                          style: const TextStyle(color: Colors.white)),
                      const Text(" - ", style: TextStyle(color: Colors.white)),
                      Text("${_viewModel.match.opponentScore}",
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                  Text(
                    _viewModel.matchState,
                    style: const TextStyle(color: Colors.winningColor),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: NetworkImage(opponentLogo)),
                  Text(
                    _viewModel.match.opponent.name,
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
              selected: <Views>{_viewModel.view as Views},
              onSelectionChanged: (Set<Views> state) {
                _viewModel.view = state.first;
              },
            ),
            Visibility(
              visible: _viewModel.view == Views.lineup,
              child: LineupInterface(matchId: _viewModel.match.id),
            ),
            Visibility(
              visible: _viewModel.view == Views.matchHistory,
              child: HistoryInterface(matchId: _viewModel.match.id),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  WidgetStateProperty.all(Colors.mainButtonColor)),
              onPressed: _viewModel.changeGameState(_viewModel.match),
              child: Column(
                children: [
                  if (_viewModel.matchState == "firstHalf")
                    const Text("Mi-Temps")
                  else
                    if (_viewModel.matchState == "halfTime")
                      const Text("Reprendre le match")
                    else
                      const Text("Terminer le match")
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            Colors.secondaryButtonColor)),
                    onPressed: () {
                      _viewModel.RevertLastAction(context);
                    },
                    child: const Text("Revenir en arrière")),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(Colors.mainButtonColor)),
                    onPressed: _viewModel.changeSystem(),
                    child: const Text("Changer la formation"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
