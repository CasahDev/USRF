import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../logic/Auth.dart';
import 'MatchPage.dart';
import 'package:usrf/logic/Match.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();

}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            'Vamos USRF',
            style: TextStyle(color: Colors.textColor, fontSize: 30),
          ),
          Text("Bienvenue ${Auth.getName()}",
              style: const TextStyle(color: Colors.textColor)),
          Column(
            children: [
              const Text("Les derniers matchs",
                  style: TextStyle(color: Colors.textColor)),
              MatchScreen(Match.getLastMatchId("A")),
              MatchScreen(Match.getMatchByTeam("B")),
              MatchScreen(Match.getMatchByTeam("C")),
            ],
          )
        ],
      ),
    );
  }
}