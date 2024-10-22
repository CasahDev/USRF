import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:session_storage/session_storage.dart';
import 'package:usrf/view/home.dart';
import 'package:usrf/view/login_page.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamos USRF',
      home: MyHomePage(title: "Vamos USRF"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget? page;

  @override
  Widget build(BuildContext context) {
    if (page == null) {
      _getStartingPage().then((value) {
        setState(() {
          page = value;
        });
      });
    }

    return MaterialApp(
        color: Colors.backgroundColor,
        home: Scaffold(
          body: page,
        ));
  }

  Future<Widget> _getStartingPage() async {
    if (await isAuthenticated()) {
      return const HomePage();
    } else {
      return const LoginPage();
    }
  }

  Future<bool> isAuthenticated() async {
    final session = SessionStorage();
    final id = session["id"];
    bool isAuthenticated = false;
    if (id != null) {
      Map decodedResponse;

      var client = http.Client();
      try {
        var response = await client.post(
          Uri.http('localhost:8080', 'user/${id}'),
        );

        decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      } finally {
        client.close();
      }
      isAuthenticated = session["connected"] == "true" &&
          decodedResponse["message"] == "User found";
    }

    return isAuthenticated;
  }
}
