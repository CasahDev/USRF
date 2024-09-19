import 'dart:math';

import 'Interface/IHashClient.dart';

class HashClient with IHashClient {
  @override
  String generateSalt() {
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final rnd = Random();

    return String.fromCharCodes(Iterable.generate(
      5, (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),),);
  }

  @override
  String hash(String data) {
    return hash(data);
  }

}