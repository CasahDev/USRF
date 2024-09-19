import 'package:flutter/cupertino.dart';

class MatchBuilder {
  static buildCard(Map<String, dynamic> match, BuildContext context) {
    Color color;
    if (match["score"] > match["opponentScore"]) {
      color = const Color.fromARGB(255, 1, 245, 7);
    } else if (match["score"] < match["opponentScore"]) {
      color = const Color.fromARGB(255, 245, 1, 1);
    } else {
      color = const Color.fromARGB(255, 255, 255, 255);
    }

    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        color: const Color(0xFF222222),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 320,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  // Image(image: "")
                  Text('USRF ${match["team"]}')
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
                  Text(match['opponent'])
                ],
              )
            ]));
  }
}
