import 'package:flutter/cupertino.dart';
import 'package:usrf/api/usages/match_api.dart';
import 'package:usrf/models/match.dart';

class MatchPageViewModel extends ChangeNotifier {
  late Match _match;

  Match get match => _match;

  MatchPageViewModel(int matchId) {
    MatchApi.getMatchById(matchId).then((value) {
      _match = value;
      notifyListeners();
    });
  }
}