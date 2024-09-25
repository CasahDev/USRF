import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:usrf/logic/Match.dart';
import 'package:usrf/view/MatchPage.dart';

class MatchCard extends StatefulWidget {
  final int matchId;

  const MatchCard(this.matchId, {super.key});

  @override
  State<MatchCard> createState() => _MatchCardState(matchId);
}

class _MatchCardState extends State<MatchCard>{

  final int matchId;

  Map<String, dynamic> match = {};

  _MatchCardState(this.matchId);

  @override
  Widget build(BuildContext context) {
    match = Match.getMatchById(matchId);

    Color color;
    if (match["score"] > match["opponentScore"]) {
      color = Colors.winningColor;
    } else if (match["score"] < match["opponentScore"]) {
      color = Colors.losingColor;
    } else {
      color = Colors.white;
    }

    /**
        var logo = getTeamLogo(match["teamId"]);
        var opponentLogo = getTeamLogo(match["opponentId"]);
     */
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
              builder: (context) => MatchScreen(matchId)));
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Image(image: NetworkImage(logo)),
              Text(
                'USRF ${match["team"]}',
                style: const TextStyle(color: Colors.textColor),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("${match['score']}", style: TextStyle(color: color)),
                  Text(" - ", style: TextStyle(color: color)),
                  Text("${match['opponentScore']}",
                      style: TextStyle(color: color))
                ],
              ),
              Visibility(
                visible: !match["ended"],
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
              // Image(image: NetworkImage(opponentLogo)),
              Text(
                match['opponent'],
                style: const TextStyle(color: Colors.textColor),
              ),
            ],
          )
        ]));
  }

}