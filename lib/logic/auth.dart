import 'dart:convert';

import 'package:http/http.dart';
import 'package:session_storage/session_storage.dart';
import 'package:http/http.dart' as http;

import 'api.dart';

class Auth {
  late SessionStorage _session;

  static Auth? _auth;

  static Auth getSession() {
    _auth ??= Auth._();

    return _auth!;
  }

  Auth._() {
    _session = SessionStorage();
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
    var res = false;
    await Api.login(email, password).then((value) {
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

  /// Retourne le prénom de l'utilisateur stocké dans la session
  static getName() {
    return getSession()._session["firstName"];
  }

  static _getId() {
    return getSession()._session["id"];
  }

  static logout() {
    getSession()._session.clear();
    getSession()._session["connected"] = "false";
  }
}
