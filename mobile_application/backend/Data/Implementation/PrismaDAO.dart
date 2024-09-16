import 'dart:mirrors';

import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart';

import '../../prisma/generated_dart_client/client.dart';
import '../../prisma/generated_dart_client/model.dart';
import '../../prisma/generated_dart_client/prisma.dart';
import '../DataFormating/Interface/IHashClient.dart';
import '../Interface/ITypeDAO.dart';

class PrismaDAO with ITypeDAO {
  PrismaDAO(this.hashClient) {
    prismaClient = PrismaClient();
  }

  late PrismaClient prismaClient;
  late IHashClient hashClient;

  /// Insert a new User into the database
  @override
  Future<Response> createUser(Map<String, dynamic> data) async {
    try {
      final salt = hashClient.generateSalt();
      await prismaClient.user.create(
        data: PrismaUnion.$1(
          UserCreateInput(
            firstName: data['firstName'] as String,
            lastName: data['lastName'] as String,
            email: data['email'] as String,
            password: hashClient.hash(salt + (data['password'] as String)),
            salt: salt,
            history: const HistoryCreateNestedManyWithoutAuthorInput(
              create: PrismaUnion.$1(
                HistoryCreateWithoutAuthorInput(
                  additionnalInformations: '',
                  actionType: ActionType.createUser,
                ),
              ),
            ),
          ),
        ),
      );
      return Response.json(body: {'message': 'User succesfully created'});
    } catch (e) {
      return Response.json(
          body: {'message': 'User succesfully created'}, statusCode: 500);
    }
  }

  @override
  Future<Response> deleteUser(int id) async {
    try {
      await prismaClient.user.delete(where: UserWhereUniqueInput(id: id));
      return Response.json(body: {'message': 'User succesfully deleted'});
    } catch (e) {
      return Response.json(
          body: {'message': 'User could not be deleted'}, statusCode: 500);
    }
  }

  @override
  Future<Response> getUserById(int id) async {
    final user =
        await prismaClient.user.findUnique(where: UserWhereUniqueInput(id: id));
    if (user.toString() == '') {
      return Response.json(
        body: {'message': 'User not found'},
        statusCode: 404,
      );
    }
    return Response.json(body: {
      'message': 'User found',
      'user': {
        'id': id,
        'firstName': user!.firstName,
        'lastName': user.lastName,
        'email': user.email,
        'history': user.history,
      }
    });
  }

  @override
  Future<Response> getUsers() async {
    final users = await prismaClient.user.findMany();
    return Response.json(
      body: {
        'message': 'Users found',
        'users': users
            .map(
              (e) => {
                'id': e.id,
                'firstName': e.firstName,
                'lastName': e.lastName,
                'email': e.email,
                'history': e.history,
              },
            )
            .toList(),
      },
    );
  }

  @override
  Future<Response> updateUser(int id, Map<String, dynamic> data) async {
    try {
      data.forEach((key, value) async {
        const userUpdateInput = UserUpdateInput();

        // Utiliser la réflexion pour définir la valeur de la variable finale correspondante à la clé
        final instanceMirror = reflect(userUpdateInput);
        final variableMirror = instanceMirror.type.declarations[Symbol(key)];
        if (variableMirror != null && variableMirror is VariableMirror) {
          instanceMirror.setField(variableMirror.simpleName, value);
        }

        await prismaClient.user.update(
          where: UserWhereUniqueInput(id: id),
          data: const PrismaUnion.$1(userUpdateInput),
        );
      });
      return Response.json(body: {'message': 'User succesfully updated'});
    } catch (e) {
      return Response.json(
          body: {'message': 'User could not be updated'}, statusCode: 500);
    }
  }
}
