class User {
  late String _id;
  late String _firstName;
  late String _lastName;
  late String _email;

  User();

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
