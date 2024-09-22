import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Match {
  static buildCard(Map<String, dynamic> match, BuildContext context) {
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
              builder: (context) => getMatchScreen(match, context)));
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
              Text(
                "En direct",
                style: TextStyle(color: color),
              ),
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

  static getTeamLogo(int teamId) {
    var responseData =
        Uri.https("http://api-dofa.prd-aws.fff.fr/api/clubs.json?filter=", "")
            as Map<String, dynamic>;
    return responseData["logo"];
  }

  static getMatchByTeam(String team) {
    return {
      "team": team,
      "opponent": "Chalon FC 3",
      "score": 1,
      "opponentScore": 1
    };
  }

  static getMatchScreen(Map<String, dynamic> match, BuildContext context) {
    _View view = _View.lineup;

    // var logo = getTeamLogo(match["teamId"]);
    // var opponentLogo = getTeamLogo(match["opponentId"]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Match ${match["team"]} - ${match["opponent"]}"),
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
                      Text("${match['score']}",
                          style: const TextStyle(color: Colors.white)),
                      const Text(" - ", style: TextStyle(color: Colors.white)),
                      Text("${match['opponentScore']}",
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                  const Text(
                    "En direct",
                    style: TextStyle(color: Colors.winningColor),
                  ),
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
            ]),
            SegmentedButton(
              segments: const [
                ButtonSegment(
                    value: _View.lineup,
                    label: Text("Composition"),
                    enabled: true,
                    icon: Icon(Icons.sports_football)),
                ButtonSegment(
                    value: _View.matchHistory,
                    label: Text("Historique"),
                    icon: Icon(Icons.history)),
              ],
              selected: <_View>{view},
              onSelectionChanged: (Set<_View> state) {
                view = state.first;
                if (view == _View.lineup) {
                  _getLineUpInterface(match["lineup"], context);
                } else {
                  _getMatchHistory(match["history"]);
                }
              },
            )
          ],
        ),
      ),
    );
  }

  static _getLineUpInterface(
      Map<String, dynamic> lineup, BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          "./assets/field.svg",
          width: MediaQuery.of(context).size.width * 0.95,
        ),
        Column(
          children: [
            for (_Positions position in _Positions.values.reversed)
              _getLine(lineup, position, context),
          ],
        )
      ],
    );
  }

  static _getPlayerButton(Map<String, dynamic> player, BuildContext context) {
    return ElevatedButton(
      // Afficher les stats du joueur sur le match
      onPressed: () {},
      child: Column(
        children: [
          SvgPicture.asset("./assets/numbers/${player["number"]}.png"),
          Text(" ${player['firstName'][0]} ${player['lastName']}"),
        ],
      ),
    );
  }

  static _getLine(
      Map<String, dynamic> lineup, _Positions position, BuildContext context) {
    return Row(
      children: [
        for (var player in lineup.values)
          if (_positions[position]!.contains(player["position"]))
            _getPlayerButton(player, context)
      ],
    );
  }

  static _getMatchHistory(Map<String, dynamic> history) {}
}

enum _View { lineup, matchHistory }

enum _Positions { goalkeeper, defender, midfielder, forward, substitute }

Map<_Positions, List<String>> _positions = {
  _Positions.goalkeeper: ["Goalkeeper"],
  _Positions.defender: ["CenterBack", "RightBack", "LeftBack"],
  _Positions.midfielder: [
    "DefensiveMidfielder",
    "CentralMidfielder",
    "AttackingMidfielder"
  ],
  _Positions.forward: ["Striker", "LeftWinger", "RightWinger"],
  _Positions.substitute: ["Substitute"]
};
