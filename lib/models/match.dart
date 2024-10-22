import 'package:usrf/models/GameState.dart';
import 'package:usrf/models/team.dart';

class Match  {
  late int _id;
  late Team _team;
  late Team _opponent;
  late int _teamScore;
  late int _opponentScore;
  late String _address;
  late DateTime _date;
  late bool _isHome;
  late String _coach;
  late GameState _state;
  late bool _isCup;
  late int _time;

  Match();

  GameState get state => _state;

  set state(GameState value) {
    _state = value;
  }

  bool get isHome => _isHome;

  set isHome(bool value) {
    _isHome = value;
  }

  DateTime get date => _date;

  set date(DateTime value) {
    _date = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  int get opponentScore => _opponentScore;

  set opponentScore(int value) {
    _opponentScore = value;
  }

  int get teamScore => _teamScore;

  set teamScore(int value) {
    _teamScore = value;
  }

  Team get opponent => _opponent;

  set opponent(Team value) {
    _opponent = value;
  }

  Team get team => _team;

  set team(Team value) {
    _team = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


  String get coach => _coach;

  set coach(String value) {
    _coach = value;
  }

  bool get isCup => _isCup;

  set isCup(bool value) {
    _isCup = value;
  }

  int get time => _time;
  
  set time(int value) {
    _time = value;
  }

  void fromJson(Map<String, dynamic> body) {
    _team = Team.fromJson(body["team"] as Map<String, dynamic>);
    _opponent = Team.fromJson(body["opponent"] as Map<String, dynamic>);
    _teamScore = body["score"];
    _opponentScore = body["opponentScore"];
    _address = body["address"];
    _date = DateTime.parse(body["date"]);
    _isHome = body["isHome"];
    _coach = body["coach"];
    _state = GameState.values[body["state"]];
    _isCup = body["isCup"];
    _time = body["time"];
  }
}