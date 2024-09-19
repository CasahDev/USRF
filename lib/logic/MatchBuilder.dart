import 'package:flutter/cupertino.dart';

class MatchBuilder {
  static buildCard(Map<String, dynamic> match, BuildContext context) {
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
                  Text('USRF ' + match['team'])
                ],
              ),
              Row(
                children: [
                  Text(match['score']),
                  const Text(" - "),
                  Text(match['opponentScore'])
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
