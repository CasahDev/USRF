import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usrf/logic/Data/usages/match_api.dart';

class HistoryInterface extends StatefulWidget {
  final int matchId;

  const HistoryInterface({
    super.key,
    required this.matchId,
  });

  @override
  State<StatefulWidget> createState() => _HistoryInterfaceState();
}

class _HistoryInterfaceState extends State<HistoryInterface> {
  late final int matchId;

  _HistoryInterfaceState() {
    matchId = widget.matchId;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> history = {};

    Match.getMatchHistoryById(matchId).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          history = value.body as Map<String, dynamic>;
        }
      });
    });

    return Column(
      children: [for (var value in history.values) _getCardHistory(value)],
    );
  }

  _getCardHistory(event) {
    String type = Match.getImageByEventType(event);
    String logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";

    // TODO
    Match.getTeamLogo(event["teamId"]).then((value) {
      setState(() {
        if (value.statusCode == 200) {
          logo = (value.body as Map<String, dynamic>)["logo"] as String;
        }
      });
    });
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
              Image(image: NetworkImage(logo)),
              Text(event["description"]),
            ],
          ),
          Text(event["time"]),
        ],
      ),
    );
  }
}
