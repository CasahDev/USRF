import 'package:usrf/logic/models/action_type.dart';
import 'package:usrf/logic/models/user.dart';

class History {
  int _id;
  User user;
  DateTime _createdAt;
  ActionType _actionType;
  String _additionalInformations;

  History(this._id, this.user, this._createdAt, this._actionType, this._additionalInformations);

  String get additionalInformations => _additionalInformations;

  set additionalInformations(String value) {
    _additionalInformations = value;
  }

  ActionType get actionType => _actionType;

  set actionType(ActionType value) {
    _actionType = value;
  }

  DateTime get createdAt => _createdAt;

  set createdAt(DateTime value) {
    _createdAt = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}