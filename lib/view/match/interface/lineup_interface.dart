import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:usrf/logic/Data/usages/match_api.dart';

import '../../../logic/enums.dart';

class LineupInterface extends StatefulWidget {
  final int matchId;

  const LineupInterface({super.key, required this.matchId});

  @override
  State<StatefulWidget> createState() => _LineupInterfaceState();
}

class _LineupInterfaceState extends State<LineupInterface> {
  late final int matchId;

  _LineupInterfaceState() {
    matchId = widget.matchId;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> lineup = {};
    Match.getLineupByMatchId(matchId).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          lineup = value as Map<String, dynamic>;
        }
      });
    });

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
