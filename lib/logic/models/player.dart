class Player {
  int _id;
  String _firstName;
  String _lastName;

  Player(this._id, this._firstName, this._lastName);

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}