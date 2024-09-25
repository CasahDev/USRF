import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usrf/logic/Match.dart';

class HistoryInterface extends StatefulWidget {
  final int matchId;

  const HistoryInterface(this.matchId, {super.key});

  @override
  State<StatefulWidget> createState() => _HistoryInterfaceState(matchId);
}

class _HistoryInterfaceState extends State<HistoryInterface>{

  final int matchId;

  _HistoryInterfaceState(this.matchId);

  @override
  Widget build(BuildContext context) {
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
}
