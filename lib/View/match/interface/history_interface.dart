import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usrf/ViewModel/history_interface_viewmodel.dart';
import 'package:usrf/api/usages/match_api.dart';

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
  late HistoryInterfaceViewModel _viewModel;

  _HistoryInterfaceState() {
    _viewModel = HistoryInterfaceViewModel(widget.matchId);
  }

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [for (var value in _viewModel.history) _getCardHistory(value)],
    );
  }

  _getCardHistory(event) {
    String type = MatchApi.getImageByEventType(event);
    String logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";

    // TODO

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
