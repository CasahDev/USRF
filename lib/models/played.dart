import 'package:usrf/models/player.dart';

class Played {
  int _id;
  Match _match;
  Player _player;
  int _jerseyNumber;
  DateTime entryTime;
  DateTime leaveTime;
  int _goals;
  int _blocked;
  int _onTarget;
  int _offTarget;
  bool _yellowCard;
  bool _redCard;
  bool _injured;
  bool _substitute;
  bool _captain;

  Played(this._id, this._match, this._player, this._jerseyNumber,
      this.entryTime, this.leaveTime, this._goals, this._blocked,
      this._onTarget, this._offTarget, this._yellowCard, this._redCard,
      this._injured, this._substitute, this._captain);

  bool get captain => _captain;

  set captain(bool value) {
    _captain = value;
  }

  bool get substitute => _substitute;

  set substitute(bool value) {
    _substitute = value;
  }

  bool get injured => _injured;

  set injured(bool value) {
    _injured = value;
  }

  bool get redCard => _redCard;

  set redCard(bool value) {
    _redCard = value;
  }

  bool get yellowCard => _yellowCard;

  set yellowCard(bool value) {
    _yellowCard = value;
  }

  int get offTarget => _offTarget;

  set offTarget(int value) {
    _offTarget = value;
  }

  int get onTarget => _onTarget;

  set onTarget(int value) {
    _onTarget = value;
  }

  int get blocked => _blocked;

  set blocked(int value) {
    _blocked = value;
  }

  int get goals => _goals;

  set goals(int value) {
    _goals = value;
  }

  int get jerseyNumber => _jerseyNumber;

  set jerseyNumber(int value) {
    _jerseyNumber = value;
  }

  Player get player => _player;

  set player(Player value) {
    _player = value;
  }

  Match get match => _match;

  set match(Match value) {
    _match = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}