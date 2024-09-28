import 'package:flutter/material.dart';

import 'package:usrf/logic/auth.dart';
import 'package:usrf/view/match/match_card.dart';
import 'package:usrf/logic/match.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int matchA = 0;
    Match.getLastMatchId("A").then((value) {
      setState(() {
        matchA = value;
      });
    });

    int matchB = 0;
    Match.getLastMatchId("B").then((value) {
      setState(() {
        matchB = value;
      });
    });

    int matchC = 0;
    Match.getLastMatchId("C").then((value) {
      setState(() {
        matchC = value;
      });
    });

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
              MatchCard(matchId: matchA),
              MatchCard(matchId: matchB),
              MatchCard(matchId: matchC),
            ],
          )
        ],
      ),
    );
  }
}
