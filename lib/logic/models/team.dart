class Team {
  int _id;
  String _name;
  int _fffId;

  Team(this._id, this._name, this._fffId);

  int get fffId => _fffId;

  set fffId(int value) {
    _fffId = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  static Team fromJson(Map<String, dynamic> body) {
    return Team(body["id"], body["name"], body["fffId"]);
  }
}