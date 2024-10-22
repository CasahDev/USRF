import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:session_storage/session_storage.dart';
import 'package:usrf/api/data_factory.dart';

class LoginPageViewModel extends ChangeNotifier{
  String _email = "";
  String _password = "";
  String _message = "";

  get email => _email;
  set email(value) {
    _email = value;
    notifyListeners();
  }

  set password(value){
    _password = value;
    notifyListeners();
  }

  get message => _message;
  set message(value) {
    _message = value;
    notifyListeners();
  }

  Future<void> login() async {
    var res = false;

    var dataGetter = DataFactory.getDataGetter();

    await dataGetter.login(_email, _password).then((value) {
      Response account = value;
      if (account.statusCode == 200) {
        final session = SessionStorage();
        session["connected"] = "true";

        ((jsonDecode(account.body) as Map<String, dynamic>)["account"]
        as Map<String, dynamic>)
            .forEach((key, value) {
          session[key.toString()] = value.toString();
        });

        res = true;
      }
    });

    if (!res) {
      throw Exception("Login failed");
    }
  }
}