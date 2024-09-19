import 'package:dart_frog/dart_frog.dart';

mixin ITypeDAO {
  Future<Response> createUser(Map<String, dynamic> datas) ;
  Future<Response> getUsers();
  Future<Response> getUserById(int id);
  Future<Response> updateUser(int id, Map<String, dynamic> data);
  Future<Response> deleteUser(int id);
  Future<Response> getLastMatchByTeam(int teamId);
  Future<Response> getNextMatchs();
  Future<Response> getMatchById(int id);
  Future<Response> createMatch(Map<String, dynamic> data);
}
