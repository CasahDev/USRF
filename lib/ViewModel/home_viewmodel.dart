import 'package:flutter/cupertino.dart';
import 'package:session_storage/session_storage.dart';
import 'package:usrf/api/usages/match_api.dart';
import 'package:usrf/models/user.dart';

class HomeViewModel extends ChangeNotifier {
  int _matchA = 0;
  int _matchB = 0;
  int _matchC = 0;

  User _user = User();

  int get matchA => _matchA;

  int get matchB => _matchB;

  int get matchC => _matchC;

  User get user => _user;

  HomeViewModel() {
    MatchApi.getLastMatchId("A").then((value) {
      _matchA = value;
      notifyListeners();
    });

    MatchApi.getLastMatchId("B").then((value) {
      _matchB = value;
      notifyListeners();
    });

    MatchApi.getLastMatchId("C").then((value) {
      _matchC = value;
      notifyListeners();
    });

    final session = SessionStorage();

    _user = User.fromJson(session["user"] as Map<String, dynamic>);
  }
}