import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Api {
  static const String _ffaApiUrl = "http://api-dofa.prd-aws.fff.fr/api/";
  static const String _backendUrl = "http://localhost:8080/";

  static Future<Response> get(String url) async {
    return await http.get(Uri.parse(_backendUrl + url));
  }

  static Future<Response> post(String url, Map<String, dynamic> body) async {
    return await http.post(Uri.parse(_backendUrl + url), body: body);
  }

  static Future<Response> put(String url, Map<String, dynamic> body) async {
    return await http.put(Uri.parse(_backendUrl + url), body: body);
  }

  static Future<Response> delete(String url) async {
    return await http.delete(Uri.parse(_backendUrl + url));
  }

  static Future<Response> patch(String url, Map<String, dynamic> body) async {
    return await http.patch(Uri.parse(_backendUrl + url), body: body);
  }

  static Future<Response> getFfaApi(String url) async {
    return await http.get(Uri.parse(_ffaApiUrl + url));
  }
}