import 'package:flutter/material.dart';
import 'package:usrf/logic/Data/usages/match_api.dart';
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
  final int matchId;

  Map<String, dynamic> match = {
    "team": "Loading...",
    "opponent": "Loading...",
    "score": 0,
    "opponentScore": 0,
    "ended": false,
  };

  _MatchCardState(this.matchId);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> match = {
      "team": "Loading...",
      "opponent": "Loading...",
      "score": 0,
      "opponentScore": 0,
      "ended": false,
    };

    Match.getMatchById(matchId).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          match = value.body as Map<String, dynamic>;
        }
      });
    });

    Color color;
    if (match["score"] > match["opponentScore"]) {
      color = Colors.winningColor;
    } else if (match["score"] < match["opponentScore"]) {
      color = Colors.losingColor;
    } else {
      color = Colors.white;
    }

    String logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";
    String opponentLogo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";

    // TODO : update logo use setState()
/*
    Match.getTeamLogo(match["teamId"]).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          logo = (value.body as Map<String, dynamic>)["logo"] as String;
        }
      });
    });

    Match.getTeamLogo(match["opponentId"]).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          opponentLogo = (value.body as Map<String, dynamic>)["logo"] as String;
        }
      });
    });
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
              builder: (context) => MatchScreen(matchId: matchId)));
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage(logo), width: 50, height: 50),
              Text(
                '${match["team"]}',
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
              Image(image: NetworkImage(opponentLogo), width: 50, height: 50),
              Text(
                match['opponent'],
                style: const TextStyle(color: Colors.textColor),
              ),
            ],
          )
        ]));
  }
}
