import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchBuilder {
  static buildCard(Map<String, dynamic> match, BuildContext context) {
    Color color;
    if (int.parse(match["score"]) > int.parse(match["opponentScore"])) {
      color = const Color.fromARGB(255, 1, 245, 7);
    } else if (int.parse(match["score"]) < int.parse(match["opponentScore"])) {
      color = const Color.fromARGB(255, 245, 1, 1);
    } else {
      color = const Color.fromARGB(255, 255, 255, 255);
    }

    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        color: const Color(0xFF222222),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  // Image(image: "")
                  Text('USRF ${match["team"]}', style: const TextStyle(color: Colors.white),)
                ],
              ),
              Row(
                children: [
                  Text(match['score'], style: TextStyle(color: color)),
                  Text(" - ", style: TextStyle(color: color)),
                  Text(match['opponentScore'], style: TextStyle(color: color))
                ],
              ),
              Column(
                children: [
                  // Image(image: "")
                  Text(match['opponent'], style: const TextStyle(color: Colors.white),)
                ],
              )
            ]));
  }
}
