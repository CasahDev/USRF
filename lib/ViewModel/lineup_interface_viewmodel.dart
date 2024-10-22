import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usrf/api/usages/match_api.dart';
import 'package:usrf/models/played.dart';

class LineupInterfaceViewModel {
  List<Played> lineup = [];

  LineupInterfaceViewModel(int matchId) {

  }

  getLineup(BuildContext context) {
    return [for (String position in MatchApi.positions.keys)
      _getLine(lineup, position, context)];
  }

  _getLine(List<Played> lineup, String pos, BuildContext context) {
    return Row(
      children: [
        for (var player in lineup)
          // TODO Utiliser la bonne position
          if (MatchApi.positions[pos]!.contains(player.jerseyNumber))
            _getPlayerButton(player, context)
      ],
    );
  }

  _getPlayerButton(Played player, BuildContext context) {
    return ElevatedButton(
      // TODO Afficher les stats du joueur sur le match
      onPressed: _getPopupPlayer(player, context),
      child: Column(
        children: [
          SvgPicture.asset("./assets/numbers/${player.jerseyNumber}.png"),
          Text(" ${player.player.firstName} ${player.player.lastName[0]}"),
        ],
      ),
    );
  }


  _getPopupPlayer(Played player, BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          SvgPicture.asset("./assets/numbers/${player.jerseyNumber}.png"),
          Text("${player.player.firstName} ${player.player.firstName}"),
          Text("Buts : ${player.goals}"),
          const Text("Passes décisives : 0"),
          Text("Cartons jaunes : ${player.yellowCard}"),
          Text("Cartons rouges : ${player.redCard}"),
          Text("Tirs : ${player.onTarget + player.offTarget}"),
          Text("Tirs cadrés : ${player.onTarget}"),
        ],
      ),
    );
  }
}