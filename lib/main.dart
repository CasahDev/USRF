import 'package:flutter/material.dart';
import 'package:usrf/logic/Auth.dart';
import 'package:usrf/view/Home.dart';
import 'package:usrf/view/LoginPage.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.backgroundColor,
      home: Container(
        child: Auth.isAuthenticated() ? const HomePage() : const LoginPage(),
      )
    );
  }
}
