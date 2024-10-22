import 'package:http/http.dart';

mixin DataGetter {
  Future<Response> get(String url);
  Future<Response> post(String url, Map<String, dynamic> body);
  Future<Response> put(String url, Map<String, dynamic> body);
  Future<Response> delete(String url);
  Future<Response> patch(String url, Map<String, dynamic> body);
  Future<Response> getFfaApi(String url);
  Future<Response> login(String email, String password);
}