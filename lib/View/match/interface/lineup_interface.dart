import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:usrf/ViewModel/lineup_interface_viewmodel.dart';

class LineupInterface extends StatefulWidget {
  final int matchId;

  const LineupInterface({super.key, required this.matchId});

  @override
  State<StatefulWidget> createState() => _LineupInterfaceState();
}

class _LineupInterfaceState extends State<LineupInterface> {
  late final LineupInterfaceViewModel _viewModel;

  _LineupInterfaceState() {
    _viewModel = LineupInterfaceViewModel(widget.matchId);
  }

  @override
  Widget build(BuildContext context) {


    return Stack(
      children: [
        SvgPicture.asset(
          "./assets/field.svg",
          width: MediaQuery.of(context).size.width * 0.95,
        ),
        Column(
          children: [
            _viewModel.getLineup(context),
          ],
        )
      ],
    );
  }
}
