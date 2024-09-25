import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:usrf/logic/Match.dart';

import '../logic/Enums.dart';

class LineupInterface extends StatefulWidget {
  final int matchId;

  const LineupInterface(this.matchId, {super.key});

  @override
  State<StatefulWidget> createState() => _LineupInterfaceState(matchId);
}

class _LineupInterfaceState extends State<LineupInterface> {
  int matchId;

  _LineupInterfaceState(this.matchId);

  @override
  Widget build(BuildContext context) {
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

  _getLine(Map<String, dynamic> lineup, Positions pos, BuildContext context) {
    return Row(
      children: [
        for (var player in lineup.values)
          if (Match.positions[pos]!.contains(player["position"]))
            _getPlayerButton(player, context)
      ],
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
