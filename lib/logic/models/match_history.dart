import 'package:usrf/logic/models/match_event.dart';

class MatchHistory {
  int _id;
  Match _match;
  MatchEvent _event;
  DateTime _time;
  String _additionalInformations;

  MatchHistory(this._id, this._match, this._event, this._time, this._additionalInformations);

  String get additionalInformations => _additionalInformations;

  set additionalInformations(String value) {
    _additionalInformations = value;
  }

  DateTime get time => _time;

  set time(DateTime value) {
    _time = value;
  }

  MatchEvent get event => _event;

  set event(MatchEvent value) {
    _event = value;
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