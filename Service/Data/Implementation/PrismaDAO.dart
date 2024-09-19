import 'dart:convert';
import 'dart:isolate';
import 'dart:js_interop';
import 'dart:mirrors';

import 'package:dart_frog/dart_frog.dart';
import 'package:orm/orm.dart';

import '../../Database/generated_dart_client/client.dart';
import '../../Database/generated_dart_client/model.dart';
import '../../Database/generated_dart_client/prisma.dart';
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
        body: {'message': 'User succesfully created'},
        statusCode: 500,
      );
    }
  }

  @override
  Future<Response> deleteUser(int id) async {
    try {
      await prismaClient.user.delete(where: UserWhereUniqueInput(id: id));
      return Response.json(body: {'message': 'User succesfully deleted'});
    } catch (e) {
      return Response.json(
        body: {'message': 'User could not be deleted'},
        statusCode: 500,
      );
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
    return Response.json(
      body: {
        'message': 'User found',
        'user': {
          'id': id,
          'firstName': user!.firstName,
          'lastName': user.lastName,
          'email': user.email,
          'history': user.history,
        },
      },
    );
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
        body: {'message': 'User could not be updated'},
        statusCode: 500,
      );
    }
  }

  @override
  Future<Response> login(Map<String, dynamic> data) async {
    final user = await prismaClient.user.findUnique(
      where: UserWhereUniqueInput(email: data['email'] as String),
    );
    if (user == null) {
      return Response.json(
        body: {'message': 'User not found'},
        statusCode: 404,
      );
    }
    final hashedPassword =
        hashClient.hash(user.salt! + (data['password'] as String));
    if (user.password == hashedPassword) {
      return Response.json(
        body: {
          'message': 'User logged in',
          'account': {
            'id': user.id,
            'firstName': user.firstName,
            'lastName': user.lastName,
            'email': user.email,
          },
        },
      );
    }
    return Response.json(
      body: {'message': 'Invalid password !'},
      statusCode: 401,
    );
  }

  @override
  Future<Response> getLastMatchByTeam(int teamId) async {
    final match = await prismaClient.match.findFirst(
      where: MatchWhereInput(
        teamId: PrismaUnion.$1(
          teamId as IntNullableFilter,
        ),
      ),
      orderBy: const PrismaUnion.$2(
        MatchOrderByWithRelationInput(date: SortOrder.desc),
      ),
    );
    if (match == null) {
      return Response.json(
        body: {'message': 'Match not found'},
        statusCode: 404,
      );
    }
    return Response.json(
      body: {
        'message': 'Match found',
        'match': {
          'id': match.id,
          'team': match.team,
          'opponent': match.opponent,
          'teamScore': match.teamScore,
          'opponentScore': match.opponentScore,
          'date': match.date,
        },
      },
    );
  }

  @override
  Future<Response> getNextMatchs() async {
    final teamCount =
        await prismaClient.$raw.query('SELECT COUNT(*) FROM Team;');

    final result = StringBuffer();
    for (var i = 0; i < teamCount.length; i++) {
      final match = await getLastMatchByTeam(i + 1);
      result.write((await match.json())['match']);
    }

    return Response.json(
      body: {
        'message': 'Matchs found',
        'matchs': {result},
      },
    );
  }

  @override
  Future<Response> createMatch(Map<String, dynamic> data) async {
    try {
      await prismaClient.match.create(
        data: PrismaUnion.$1(
          MatchCreateInput(
            team: TeamCreateNestedOneWithoutMatchesInput(
              connect: TeamWhereUniqueInput(id: data['teamId'] as int),
            ),
            opponent: data['opponent'] as String,
            teamScore: data['teamScore'] as int,
            opponentScore: data['opponentScore'] as int,
            date: data['date'] as DateTime,
            address: data['address'] as String,
            isHome: data['isHome'] as bool,
            coach: data['coach'] as String,
          ),
        ),
      );
    } catch (e) {
      return Response.json(
        body: {'message': 'Match could not be created (error: $e)'},
        statusCode: 500,
      );
    }
    return Response.json(
      body: {
        'message': 'Matchs succesfly created',
      },
    );
  }

  @override
  Future<Response> getMatchById(int matchId) async {
    try {
      final match = await prismaClient.match.findFirst(
        where: MatchWhereInput(id: PrismaUnion.$1(matchId as IntFilter)),
      );

      return Response.json(
        body: {
          'message': 'Match found !',
          'match': {
            'team': match?.team!.name,
            'opponent': match?.opponent,
            'teamScore': match?.teamScore,
            'opponentScore': match?.opponentScore,
            'date': match?.date,
            'address': match?.address,
            'isHome': match?.isHome,
            'coach': match?.coach,
            'lineups': (jsonEncode((await getLineUpByMatchId(matchId)).body())
                as Map<String, dynamic>)['lineup'],
          },
        },
      );
    } catch (e) {
      return Response.json(
        body: {
          'message': e.toString(),
        },
      );
    }
  }

  Future<Response> getLineUpByMatchId(int matchId) async {
    final lineup = await prismaClient.played.findMany(
        where: PlayedWhereInput(id: PrismaUnion.$1(matchId as IntFilter)));
    final response = deserializeJsonResponse(lineup);

    var message = 'Lineup found !';
    if (response == '') {
      message = 'Lineup not found !';
    }

    return Response.json(
      body: {
        'message': message,
        'lineup': response,
      },
    );
  }
}
