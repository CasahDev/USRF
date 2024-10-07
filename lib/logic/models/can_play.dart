import 'package:usrf/logic/enums.dart';
import 'package:usrf/logic/models/player.dart';

class CanPlay {
  int _id;
  Player _player;
  Positions _position;

  CanPlay(this._id, this._player, this._position);

  Positions get position => _position;

  set position(Positions value) {
    _position = value;
  }

  Player get player => _player;

  set player(Player value) {
    _player = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}