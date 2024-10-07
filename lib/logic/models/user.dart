class User {
  String _id;
  String _firstName;
  String _lastName;
  String _email;
  String _password;
  String _salt;

  User(this._id, this._firstName, this._lastName, this._email, this._password,
      this._salt);

  String get salt => _salt;

  set salt(String value) {
    _salt = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get last_name => _lastName;

  set last_name(String value) {
    _lastName = value;
  }

  String get first_name => _firstName;

  set first_name(String value) {
    _firstName = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}
