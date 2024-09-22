import 'package:flutter/material.dart';
import 'package:usrf/logic/Auth.dart';
import 'package:usrf/logic/Match.dart';

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
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      backgroundColor: Colors.backgroundColor,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Vamos USRF',
              style: TextStyle(color: Colors.textColor, fontSize: 30),
            ),
            Text("Bienvenue ${Auth.getName()}",
                style: const TextStyle(color: Colors.textColor)),
            Column(
              children: [
                const Text("Les derniers matchs",
                    style: TextStyle(color: Colors.textColor)),
                Match.buildCard(Match.getMatchByTeam("A"), context),
                Match.buildCard(Match.getMatchByTeam("B"), context),
                Match.buildCard(Match.getMatchByTeam("C"), context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
