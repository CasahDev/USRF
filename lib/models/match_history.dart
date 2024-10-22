import 'package:usrf/models/match_event.dart';
import 'package:usrf/models/match.dart';

class MatchHistory {
  int _id = 0;
  Match _match = Match();
  MatchEvent _event = MatchEvent.NULL;
  DateTime _time = DateTime.now();
  String _additionalInformations = "";

  MatchHistory();

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

  fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _match = Match();
    _match.fromJson(json['match']);
    _event = MatchEvent.values[json['event']];
    _time = DateTime.parse(json['time']);
    _additionalInformations = json['additionalInformations'];

  }
}