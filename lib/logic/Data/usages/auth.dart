import 'dart:convert';

import 'package:http/http.dart';
import 'package:session_storage/session_storage.dart';
import 'package:http/http.dart' as http;
import 'package:usrf/logic/Data/DataFactory.dart';
import 'package:usrf/logic/models/user.dart';

class Auth {
  late SessionStorage _session;
  final User _user = User();

  static Auth? _auth;

  /// Retourne l'instance de la classe Auth
  static Auth getSession() {
    _auth ??= Auth._();

    return _auth!;
  }

  Auth._() {
    _session = SessionStorage();
    _user.id = _session["id"] ?? "";
    _user.email = _session["email"] ?? "";
    _user.first_name = _session["firstName"] ?? "";
    _user.last_name = _session["lastName"] ?? "";
  }

  User getUser() {
    return _user;
  }

  /// email : l'email de l'utilisateur
  ///
  /// password : le mot de passe de l'utilisateur
  ///
  /// Connecte l'utilisateur à l'application
  ///
  /// Stocke les informations de l'utilisateur dans la session
  ///
  /// Stocke le statut de connexion dans la session
  static Future<bool> login(String email, String password) async {
    return getSession()._login(email, password);
  }

  Future<bool> _login(String email, String password) async {
    var res = false;

    var dataGetter = DataFactory.getDataGetter();

    await dataGetter.login(email, password).then((value) {
      Response account = value;
      if (account.statusCode == 200) {
        getSession()._session["connected"] = "true";

        ((jsonDecode(account.body) as Map<String, dynamic>)["account"]
        as Map<String, dynamic>)
            .forEach((key, value) {
          getSession()._session[key.toString()] = value.toString();
        });

        res = true;
      }
    });

    return res;
  }

  /// Retourne l'email de l'utilisateur stocké dans la session
  static getEmail() {
    return getSession()._session["email"];
  }

  /// Retourne si oui ou non l'utilisateur est connecté
  static Future<bool> isAuthenticated() async {
    return getSession()._isAuthenticated();
  }

  /// Retourne le prénom de l'utilisateur stocké dans la session
  static getName() {
    return ("${getSession()._session["firstName"]}  ${getSession()._session["lastName"]}");
  }

  /// Retourne l'id de l'utilisateur stocké dans la session
  static _getId() {
    return getSession()._session["id"];
  }

  /// Déconnecte l'utilisateur
  static logout() {
    getSession()._session.clear();
    getSession()._session["connected"] = "false";
  }

  Future<bool> _isAuthenticated() async {
    if (_getId() == null) return false;

    Map decodedResponse;
    var client = http.Client();
    try {
      var response = await client.post(
        Uri.http('localhost:8080', 'user/${_getId()}'),
      );

      decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    } finally {
      client.close();
    }

    return getSession()._session["connected"] == "true" &&
        decodedResponse["message"] == "User found";
  }
}
