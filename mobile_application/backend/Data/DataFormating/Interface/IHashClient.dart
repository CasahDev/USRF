mixin IHashClient {
  String hash(String data);
  String generateSalt();
}