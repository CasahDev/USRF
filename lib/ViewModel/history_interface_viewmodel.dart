import 'package:flutter/cupertino.dart';
import 'package:usrf/api/usages/match_api.dart';
import 'package:usrf/models/match_history.dart';

class HistoryInterfaceViewModel extends ChangeNotifier {
  List<MatchHistory> _history = [];

  List<MatchHistory> get history => _history;

  HistoryInterfaceViewModel(int matchId) {
    MatchApi.getMatchHistoryById(matchId).then((value) {
      _history = value;
      notifyListeners();
    });
  }

  String getLogo(int teamId) {
    String logo = "https://i.postimg.cc/QNqhb8vV/default-Icon.png";
    MatchApi.getTeamLogo(teamId).then((value) {
        if (value.statusCode == 200) {
          logo = (value.body as Map<String, dynamic>)["logo"] as String;
        }
    });

    return logo;
  }
}