import 'package:flutter/material.dart';
import 'package:usrf/ViewModel/match_card_viewmodel.dart';
import 'package:usrf/models/GameState.dart';
import 'package:usrf/view/match/match_page.dart';

class MatchCard extends StatefulWidget {
  final int matchId;

  const MatchCard({
    super.key,
    required this.matchId,
  });

  @override
  State<MatchCard> createState() => _MatchCardState(matchId);
}

class _MatchCardState extends State<MatchCard> {
  late final MatchCardViewModel _viewModel;

  _MatchCardState(matchId) {
    _viewModel = MatchCardViewModel(matchId);
  }

  @override
  Widget build(BuildContext context) {

    Color color = _viewModel.getColor();

    String logo = _viewModel.getLogo(true);
    String opponentLogo = _viewModel.getLogo(false);

    return TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.backgroundColor),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: WidgetStateProperty.all(
            Size(
              (MediaQuery.of(context).size.width * 0.8),
              (MediaQuery.of(context).size.height * 0.15),
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MatchScreen(matchId: _viewModel.match.id)));
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage(logo), width: 50, height: 50),
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
                  Text(_viewModel.match.teamScore as String, style: TextStyle(color: color)),
                  Text(" - ", style: TextStyle(color: color)),
                  Text(_viewModel.match.opponentScore as String,
                      style: TextStyle(color: color))
                ],
              ),
              Visibility(
                visible: (_viewModel.match.state != GameState.end),
                child: Text(
                  "En direct",
                  style: TextStyle(color: color),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage(opponentLogo), width: 50, height: 50),
              Text(
                _viewModel.match.opponent.name,
                style: const TextStyle(color: Colors.textColor),
              ),
            ],
          )
        ]));
  }
}
