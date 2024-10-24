import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:usrf/api/data_getter.dart';

class Api implements DataGetter {
  static const String _ffaApiUrl = "http://api-dofa.prd-aws.fff.fr/api/";
  static const String _backendUrl = "http://192.168.1.37:8080/";

  @override
  Future<Response> get(String url) async {
    return await http.get(Uri.parse(_backendUrl + url));
  }

  @override
  Future<Response> post(String url, Map<String, dynamic> body) async {
    return await http.post(Uri.parse(_backendUrl + url), body: body);
  }

  @override
  Future<Response> put(String url, Map<String, dynamic> body) async {
    return await http.put(Uri.parse(_backendUrl + url), body: body);
  }

  @override
  Future<Response> delete(String url) async {
    return await http.delete(Uri.parse(_backendUrl + url));
  }

  @override
  Future<Response> patch(String url, Map<String, dynamic> body) async {
    return await http.patch(Uri.parse(_backendUrl + url), body: body);
  }

  @override
  Future<Response> getFfaApi(String url) async {
    return await http.get(Uri.parse(_ffaApiUrl + url));
  }

  @override
  Future<Response> login(String email, String password) async {
    return await http.post(Uri.parse("${_backendUrl}user/login"),
        body: {"email": email, "password": password});
  }
}