import 'package:usrf/logic/models/GameState.dart';
import 'package:usrf/logic/models/team.dart';

class Match {
  int _id;
  Team _team;
  Team _opponent;
  int _teamScore;
  int _opponentScore;
  String _address;
  DateTime _date;
  bool _isHome;
  String coach;
  GameState _state;
  bool isCup;

  Match(this._id, this._team, this._opponent, this._teamScore, this._opponentScore, this._address, this._date, this._isHome, this.coach, this._state, this.isCup);

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
}