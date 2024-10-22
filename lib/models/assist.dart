import 'package:usrf/models/assist_type.dart';
import 'package:usrf/models/played.dart';

class Assist {
  int _id;
  Played _played;
  Played _assisted;
  DateTime _assistTime;
  AssistType _type;

  Assist(this._id, this._played, this._assisted, this._assistTime, this._type);

  AssistType get type => _type;

  set type(AssistType value) {
    _type = value;
  }

  DateTime get assistTime => _assistTime;

  set assistTime(DateTime value) {
    _assistTime = value;
  }

  Played get assisted => _assisted;

  set assisted(Played value) {
    _assisted = value;
  }

  Played get played => _played;

  set played(Played value) {
    _played = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}