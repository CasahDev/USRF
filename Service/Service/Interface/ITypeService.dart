import 'package:dart_frog/dart_frog.dart';

mixin ITypeService {
  Future<Response> createUser(Map<String, dynamic> data);
  Future<Response> getUsers();
  Future<Response> getUserById(int id);
  Future<Response> updateUser(int id, Map<String, dynamic> data);
  Future<Response> deleteUser(int id);
  Future<Response> getMatchById(int id);
  Future<Response> createMatch(Map<String, dynamic> data);
}
