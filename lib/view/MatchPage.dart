import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usrf/logic/Match.dart';

import '../logic/Enums.dart';

class MatchScreen extends StatefulWidget {
  final int matchId;
  const MatchScreen(this.matchId, {super.key});

  @override
  State<StatefulWidget> createState() => _MatchState(matchId);
}

class _MatchState extends State<MatchScreen> {
  int matchId;

  Map<String, dynamic> match = {};

  final Map<Positions, List<String>> _positions = {
    Positions.goalkeeper: ["Goalkeeper"],
    Positions.defender: ["CenterBack", "RightBack", "LeftBack"],
    Positions.midfielder: [
      "DefensiveMidfielder",
      "CentralMidfielder",
      "AttackingMidfielder"
    ],
    Positions.forward: ["Striker", "LeftWinger", "RightWinger"],
    Positions.substitute: ["Substitute"]
  };


  _MatchState(this.matchId);

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
              builder: (context) => _getMatchScreen(match, context)));
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

  /// Retourne le lien du logo de la teamId passée en paramètre (utilise l'api de la FFF)


  _getMatchScreen(Map<String, dynamic> match, BuildContext context) {
    if (!match["ended"]) {
      return _getMatchPlayingScreen(context);
    } else {
      return _getMatchEndedScreen(match, context);
    }
  }

  _getMatchPlayingScreen(BuildContext context) {
    Views view = Views.lineup;
    String matchState = _getMatchState(match);

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
                  Text(
                    matchState,
                    style: const TextStyle(color: Colors.winningColor),
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
                    value: Views.lineup,
                    label: Text("Composition"),
                    enabled: true,
                    icon: Icon(Icons.sports_football)),
                ButtonSegment(
                    value: Views.matchHistory,
                    label: Text("Historique"),
                    icon: Icon(Icons.history)),
              ],
              selected: <Views>{view},
              onSelectionChanged: (Set<Views> state) {
                view = state.first;
              },
            ),
            Visibility(
              visible: view == Views.lineup,
              child: _getLineUpInterface(context),
            ),
            Visibility(
              visible: view == Views.matchHistory,
              child: _getMatchHistoryInterface(context),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.mainButtonColor)),
              onPressed: _changeGameState(match),
              child: Column(
                children: [
                  if (matchState == "firstHalf")
                    const Text("Mi-Temps")
                  else if (matchState == "halfTime")
                    const Text("Reprendre le match")
                  else
                    const Text("Terminer le match")
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.secondaryButtonColor)),
                    onPressed: Match.revertLatchAction(),
                    child: const Text("Revenir en arrière")),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.mainButtonColor)),
                    onPressed: _changeSystem(),
                    child: const Text("Changer la formation"))
              ],
            )
          ],
        ),
      ),
    );
  }

  _getLineUpInterface(BuildContext context) {
    var lineup = Match.getLineupByMatchId(matchId);
    return Stack(
      children: [
        SvgPicture.asset(
          "./assets/field.svg",
          width: MediaQuery.of(context).size.width * 0.95,
        ),
        Column(
          children: [
            for (Positions position in Positions.values.reversed)
              _getLine(lineup, position, context),
          ],
        )
      ],
    );
  }

  _getPlayerButton(Map<String, dynamic> player, BuildContext context) {
    return ElevatedButton(
      // TODO Afficher les stats du joueur sur le match
      onPressed: getPopupPlayer(player, context),
      child: Column(
        children: [
          SvgPicture.asset("./assets/numbers/${player["number"]}.png"),
          Text(" ${player['firstName']} ${player['lastName'][0]}"),
        ],
      ),
    );
  }

  _getLine(Map<String, dynamic> lineup, Positions position, BuildContext context) {
    return Row(
      children: [
        for (var player in lineup.values)
          if (_positions[position]!.contains(player["position"]))
            _getPlayerButton(player, context)
      ],
    );
  }

  _getMatchHistoryInterface(BuildContext context) {
    Map<String, dynamic> history = Match.getMatchHistoryById(matchId);
    return Column(
      children: [
        for (var value in history.values)
          _getCardHistory(value)
      ],
    );
  }

  _getCardHistory( event) {
    String type = Match.getImageByEventType(event);
    // String logo = getTeamLogo(event["teamId"]);
    return Card(
      color: Colors.secondaryBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(type),
              // Image(image: NetworkImage(logo)),
              Text(event["description"]),
            ],
          ),
          Text(event["time"]),
        ],
      ),
    );
  }

  _getMatchEndedScreen(
       match, BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match ${match["team"]} - ${match["opponent"]}"),
      ),
      body: Center(
        child: Column(
          children: [
            _getLineUpInterface(context),
            _getMatchHistoryInterface(context),
          ],
        ),
      ),
    );
  }

  _changeGameState( match) {
  }

  String _getMatchState( match) {
    return switch (match["state"]) {
      "firstHalf" =>
      match["time"] < 45 ? "${match["time"]}'" : "45+${match["time"] - 45}'",
      "secondHalf" =>
      match["time"] < 90 ? "${match["time"]}'" : "90+${match["time"] - 90}'",
      "halfTime" => "Mi-temps",
      "penalties" => "Tirs au but",
      _ => "Match non commencé"
    };
  }

  _changeSystem() {
    return AlertDialog(
        content: Column(
          children: [
            const Text("Choisissez la nouvelle formation"),
            for (var formation in Formation.values)
              ElevatedButton(
                onPressed: Match.changeFormation(matchId, formation),
                child: Text(formation.name.substring(1)),
              ),
          ],
        )
    );
  }

  getPopupPlayer(Map<String, dynamic> player, BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          SvgPicture.asset("./assets/numbers/${player["number"]}.png"),
          Text("${player['firstName']} ${player['lastName']}"),
          Text("Buts : ${player['goals']}"),
          Text("Passes décisives : ${player['assists']}"),
          Text("Cartons jaunes : ${player['yellowCards']}"),
          Text("Cartons rouges : ${player['redCards']}"),
          Text("Tirs : ${player['shots']}"),
          Text("Tirs cadrés : ${player['shotsOnTarget']}"),
          Text("Cartons jaunes : ${player['yellowCards']}"),
        ],
      ),
    );
  }
}
