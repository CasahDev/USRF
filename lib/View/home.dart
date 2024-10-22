import 'package:flutter/material.dart';
import 'package:usrf/ViewModel/home_viewmodel.dart';

import 'package:usrf/view/match/interface/match_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        color: Colors.backgroundColor,
      ),
      child: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Vamos USRF',
              style: TextStyle(color: Colors.textColor, fontSize: 40),
            ),
            Text("Bienvenue ${_viewModel.user.firstName}",
                style: const TextStyle(color: Colors.textColor, fontSize: 20)),
            Column(
              children: [
                const Text("Les derniers matchs",
                    style: TextStyle(color: Colors.textColor, fontSize: 20)),
                MatchCard(matchId: _viewModel.matchA),
                MatchCard(matchId: _viewModel.matchB),
                MatchCard(matchId: _viewModel.matchC),
              ],
            )
          ],
        ),
      ),
    );
  }
}
