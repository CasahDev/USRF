import 'package:usrf/logic/Observable.dart';
import 'package:usrf/logic/Observer.dart';
import 'package:usrf/logic/models/GameState.dart';
import 'package:usrf/logic/models/team.dart';

class Match implements Observable {

  final List<Observer> _observers = [];

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
    notifyObservers("state", value);
    _state = value;
  }

  bool get isHome => _isHome;

  set isHome(bool value) {
    notifyObservers("isHome", value);
    _isHome = value;
  }

  DateTime get date => _date;

  set date(DateTime value) {
    notifyObservers("date", value);
    _date = value;
  }

  String get address => _address;

  set address(String value) {
    notifyObservers("address", value);
    _address = value;
  }

  int get opponentScore => _opponentScore;

  set opponentScore(int value) {
    notifyObservers("opponentScore", value);
    _opponentScore = value;
  }

  int get teamScore => _teamScore;

  set teamScore(int value) {
    notifyObservers("teamScore", value);
    _teamScore = value;
  }

  Team get opponent => _opponent;

  set opponent(Team value) {
    notifyObservers("opponent", value);
    _opponent = value;
  }

  Team get team => _team;

  set team(Team value) {
    notifyObservers("team", value);
    _team = value;
  }

  int get id => _id;

  set id(int value) {
    notifyObservers("id", value);
    _id = value;
  }


  String get coach => _coach;

  set coach(String value) {
    notifyObservers("coach", value);
    _coach = value;
  }

  bool get isCup => _isCup;

  set isCup(bool value) {
    notifyObservers("isCup", value);
    _isCup = value;
  }

  int get time => _time;
  
  set time(int value) {
    notifyObservers("time", value);
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

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void notifyObservers(String key, dynamic newValue) {
    for (var element in _observers) {
      element.update(key, newValue);
    }
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }
}