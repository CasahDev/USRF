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

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  static fromJson(Map<String, dynamic> json) {
    final user = User();
    user.id = json["id"];
    user.firstName = json["firstName"];
    user.lastName = json["lastName"];
    user.email = json["email"];
    return user;
  }
}
