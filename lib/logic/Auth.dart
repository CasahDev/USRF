import 'dart:convert';

import 'package:session_storage/session_storage.dart';
import 'package:http/http.dart' as http;

class Auth {
  late SessionStorage _session;

  static Auth? auth;

  static Auth getSession() {
    auth ??= Auth._();

    return auth!;
  }

  Auth._() {
    _session = SessionStorage();
  }

  static void login(String email, String password) {
    var account = Uri.http(
        "localhost:8080", "api/user", {"email": email, "password": password});

    if (account.data?.parameters["message"] == "User logged in") {
      getSession()._session["connected"] = "true";

      (account.data!.parameters["account"] as Map<String, dynamic>)
          .forEach((key, value) {
        getSession()._session[key] = value;
      });
    }
  }

  static getEmail() {
    return getSession()._session["email"];
  }

  static isAuthenticated() async {
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

    return getSession()._session["connected"] as bool &&
        decodedResponse["message"] == "User found";
  }

  static getName() {
    return getSession()._session["first_name"];
  }

  static _getId() {
    return getSession()._session["id"];
  }
}
