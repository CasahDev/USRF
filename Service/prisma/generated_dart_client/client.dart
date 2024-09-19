// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UserDelegate {
  const UserDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.User?> findUnique({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findUniqueuser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findUniqueOrThrow({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findUniqueuserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> findFirst({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findFirstuser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findFirstOrThrow({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findFirstuserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.User>> findMany({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.User>>(
      action: 'findManyuser',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.User.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User> create({
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
        data,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'createOneuser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.UserCreateManyInput, Iterable<_i3.UserCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyuser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> update({
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
        data,
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'updateOneuser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UserUpdateManyMutationInput,
            _i3.UserUncheckedUpdateManyInput>
        data,
    _i3.UserWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyuser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User> upsert({
    required _i3.UserWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
        update,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'upsertOneuser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> delete({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'deleteOneuser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UserWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyuser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>> groupBy({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithAggregationInput>,
            _i3.UserOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UserScalar>, _i3.UserScalar> by,
    _i3.UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UserGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>>(
      action: 'groupByuser',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UserGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUser> aggregate({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'user',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUser>(
      action: 'aggregateuser',
      result: result,
      factory: (e) => _i3.AggregateUser.fromJson(e),
    );
  }
}

class TeamDelegate {
  const TeamDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Team?> findUnique({
    required _i3.TeamWhereUniqueInput where,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team?>(
      action: 'findUniqueteam',
      result: result,
      factory: (e) => e != null ? _i2.Team.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Team> findUniqueOrThrow({
    required _i3.TeamWhereUniqueInput where,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team>(
      action: 'findUniqueteamOrThrow',
      result: result,
      factory: (e) => _i2.Team.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Team?> findFirst({
    _i3.TeamWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TeamOrderByWithRelationInput>,
            _i3.TeamOrderByWithRelationInput>?
        orderBy,
    _i3.TeamWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TeamScalar, Iterable<_i3.TeamScalar>>? distinct,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team?>(
      action: 'findFirstteam',
      result: result,
      factory: (e) => e != null ? _i2.Team.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Team> findFirstOrThrow({
    _i3.TeamWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TeamOrderByWithRelationInput>,
            _i3.TeamOrderByWithRelationInput>?
        orderBy,
    _i3.TeamWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TeamScalar, Iterable<_i3.TeamScalar>>? distinct,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team>(
      action: 'findFirstteamOrThrow',
      result: result,
      factory: (e) => _i2.Team.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Team>> findMany({
    _i3.TeamWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TeamOrderByWithRelationInput>,
            _i3.TeamOrderByWithRelationInput>?
        orderBy,
    _i3.TeamWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TeamScalar, Iterable<_i3.TeamScalar>>? distinct,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Team>>(
      action: 'findManyteam',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Team.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Team> create({
    required _i1.PrismaUnion<_i3.TeamCreateInput, _i3.TeamUncheckedCreateInput>
        data,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team>(
      action: 'createOneteam',
      result: result,
      factory: (e) => _i2.Team.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.TeamCreateManyInput, Iterable<_i3.TeamCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyteam',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Team?> update({
    required _i1.PrismaUnion<_i3.TeamUpdateInput, _i3.TeamUncheckedUpdateInput>
        data,
    required _i3.TeamWhereUniqueInput where,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team?>(
      action: 'updateOneteam',
      result: result,
      factory: (e) => e != null ? _i2.Team.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TeamUpdateManyMutationInput,
            _i3.TeamUncheckedUpdateManyInput>
        data,
    _i3.TeamWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyteam',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Team> upsert({
    required _i3.TeamWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.TeamCreateInput, _i3.TeamUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.TeamUpdateInput, _i3.TeamUncheckedUpdateInput>
        update,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team>(
      action: 'upsertOneteam',
      result: result,
      factory: (e) => _i2.Team.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Team?> delete({
    required _i3.TeamWhereUniqueInput where,
    _i3.TeamSelect? select,
    _i3.TeamInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Team?>(
      action: 'deleteOneteam',
      result: result,
      factory: (e) => e != null ? _i2.Team.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TeamWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyteam',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TeamGroupByOutputType>> groupBy({
    _i3.TeamWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TeamOrderByWithAggregationInput>,
            _i3.TeamOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TeamScalar>, _i3.TeamScalar> by,
    _i3.TeamScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TeamGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TeamGroupByOutputType>>(
      action: 'groupByteam',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TeamGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTeam> aggregate({
    _i3.TeamWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TeamOrderByWithRelationInput>,
            _i3.TeamOrderByWithRelationInput>?
        orderBy,
    _i3.TeamWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTeamSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'team',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTeam>(
      action: 'aggregateteam',
      result: result,
      factory: (e) => _i3.AggregateTeam.fromJson(e),
    );
  }
}

class PlayerDelegate {
  const PlayerDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Player?> findUnique({
    required _i3.PlayerWhereUniqueInput where,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player?>(
      action: 'findUniqueplayer',
      result: result,
      factory: (e) => e != null ? _i2.Player.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Player> findUniqueOrThrow({
    required _i3.PlayerWhereUniqueInput where,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player>(
      action: 'findUniqueplayerOrThrow',
      result: result,
      factory: (e) => _i2.Player.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Player?> findFirst({
    _i3.PlayerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayerOrderByWithRelationInput>,
            _i3.PlayerOrderByWithRelationInput>?
        orderBy,
    _i3.PlayerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlayerScalar, Iterable<_i3.PlayerScalar>>? distinct,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player?>(
      action: 'findFirstplayer',
      result: result,
      factory: (e) => e != null ? _i2.Player.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Player> findFirstOrThrow({
    _i3.PlayerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayerOrderByWithRelationInput>,
            _i3.PlayerOrderByWithRelationInput>?
        orderBy,
    _i3.PlayerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlayerScalar, Iterable<_i3.PlayerScalar>>? distinct,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player>(
      action: 'findFirstplayerOrThrow',
      result: result,
      factory: (e) => _i2.Player.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Player>> findMany({
    _i3.PlayerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayerOrderByWithRelationInput>,
            _i3.PlayerOrderByWithRelationInput>?
        orderBy,
    _i3.PlayerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlayerScalar, Iterable<_i3.PlayerScalar>>? distinct,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Player>>(
      action: 'findManyplayer',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Player.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Player> create({
    required _i1
        .PrismaUnion<_i3.PlayerCreateInput, _i3.PlayerUncheckedCreateInput>
        data,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player>(
      action: 'createOneplayer',
      result: result,
      factory: (e) => _i2.Player.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PlayerCreateManyInput,
            Iterable<_i3.PlayerCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyplayer',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Player?> update({
    required _i1
        .PrismaUnion<_i3.PlayerUpdateInput, _i3.PlayerUncheckedUpdateInput>
        data,
    required _i3.PlayerWhereUniqueInput where,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player?>(
      action: 'updateOneplayer',
      result: result,
      factory: (e) => e != null ? _i2.Player.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PlayerUpdateManyMutationInput,
            _i3.PlayerUncheckedUpdateManyInput>
        data,
    _i3.PlayerWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyplayer',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Player> upsert({
    required _i3.PlayerWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PlayerCreateInput, _i3.PlayerUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PlayerUpdateInput, _i3.PlayerUncheckedUpdateInput>
        update,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player>(
      action: 'upsertOneplayer',
      result: result,
      factory: (e) => _i2.Player.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Player?> delete({
    required _i3.PlayerWhereUniqueInput where,
    _i3.PlayerSelect? select,
    _i3.PlayerInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Player?>(
      action: 'deleteOneplayer',
      result: result,
      factory: (e) => e != null ? _i2.Player.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PlayerWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyplayer',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PlayerGroupByOutputType>> groupBy({
    _i3.PlayerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayerOrderByWithAggregationInput>,
            _i3.PlayerOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PlayerScalar>, _i3.PlayerScalar> by,
    _i3.PlayerScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PlayerGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PlayerGroupByOutputType>>(
      action: 'groupByplayer',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PlayerGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePlayer> aggregate({
    _i3.PlayerWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayerOrderByWithRelationInput>,
            _i3.PlayerOrderByWithRelationInput>?
        orderBy,
    _i3.PlayerWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePlayerSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'player',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePlayer>(
      action: 'aggregateplayer',
      result: result,
      factory: (e) => _i3.AggregatePlayer.fromJson(e),
    );
  }
}

class MatchDelegate {
  const MatchDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Match?> findUnique({
    required _i3.MatchWhereUniqueInput where,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match?>(
      action: 'findUniquematch',
      result: result,
      factory: (e) => e != null ? _i2.Match.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Match> findUniqueOrThrow({
    required _i3.MatchWhereUniqueInput where,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match>(
      action: 'findUniquematchOrThrow',
      result: result,
      factory: (e) => _i2.Match.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Match?> findFirst({
    _i3.MatchWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MatchOrderByWithRelationInput>,
            _i3.MatchOrderByWithRelationInput>?
        orderBy,
    _i3.MatchWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MatchScalar, Iterable<_i3.MatchScalar>>? distinct,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match?>(
      action: 'findFirstmatch',
      result: result,
      factory: (e) => e != null ? _i2.Match.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Match> findFirstOrThrow({
    _i3.MatchWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MatchOrderByWithRelationInput>,
            _i3.MatchOrderByWithRelationInput>?
        orderBy,
    _i3.MatchWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MatchScalar, Iterable<_i3.MatchScalar>>? distinct,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match>(
      action: 'findFirstmatchOrThrow',
      result: result,
      factory: (e) => _i2.Match.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Match>> findMany({
    _i3.MatchWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MatchOrderByWithRelationInput>,
            _i3.MatchOrderByWithRelationInput>?
        orderBy,
    _i3.MatchWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MatchScalar, Iterable<_i3.MatchScalar>>? distinct,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Match>>(
      action: 'findManymatch',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Match.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Match> create({
    required _i1
        .PrismaUnion<_i3.MatchCreateInput, _i3.MatchUncheckedCreateInput>
        data,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match>(
      action: 'createOnematch',
      result: result,
      factory: (e) => _i2.Match.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.MatchCreateManyInput,
            Iterable<_i3.MatchCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManymatch',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Match?> update({
    required _i1
        .PrismaUnion<_i3.MatchUpdateInput, _i3.MatchUncheckedUpdateInput>
        data,
    required _i3.MatchWhereUniqueInput where,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match?>(
      action: 'updateOnematch',
      result: result,
      factory: (e) => e != null ? _i2.Match.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.MatchUpdateManyMutationInput,
            _i3.MatchUncheckedUpdateManyInput>
        data,
    _i3.MatchWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManymatch',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Match> upsert({
    required _i3.MatchWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.MatchCreateInput, _i3.MatchUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.MatchUpdateInput, _i3.MatchUncheckedUpdateInput>
        update,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match>(
      action: 'upsertOnematch',
      result: result,
      factory: (e) => _i2.Match.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Match?> delete({
    required _i3.MatchWhereUniqueInput where,
    _i3.MatchSelect? select,
    _i3.MatchInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Match?>(
      action: 'deleteOnematch',
      result: result,
      factory: (e) => e != null ? _i2.Match.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.MatchWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManymatch',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.MatchGroupByOutputType>> groupBy({
    _i3.MatchWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MatchOrderByWithAggregationInput>,
            _i3.MatchOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.MatchScalar>, _i3.MatchScalar> by,
    _i3.MatchScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.MatchGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.MatchGroupByOutputType>>(
      action: 'groupBymatch',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.MatchGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateMatch> aggregate({
    _i3.MatchWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MatchOrderByWithRelationInput>,
            _i3.MatchOrderByWithRelationInput>?
        orderBy,
    _i3.MatchWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateMatchSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'match',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateMatch>(
      action: 'aggregatematch',
      result: result,
      factory: (e) => _i3.AggregateMatch.fromJson(e),
    );
  }
}

class PlayedDelegate {
  const PlayedDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Played?> findUnique({
    required _i3.PlayedWhereUniqueInput where,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played?>(
      action: 'findUniqueplayed',
      result: result,
      factory: (e) => e != null ? _i2.Played.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Played> findUniqueOrThrow({
    required _i3.PlayedWhereUniqueInput where,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played>(
      action: 'findUniqueplayedOrThrow',
      result: result,
      factory: (e) => _i2.Played.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Played?> findFirst({
    _i3.PlayedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayedOrderByWithRelationInput>,
            _i3.PlayedOrderByWithRelationInput>?
        orderBy,
    _i3.PlayedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlayedScalar, Iterable<_i3.PlayedScalar>>? distinct,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played?>(
      action: 'findFirstplayed',
      result: result,
      factory: (e) => e != null ? _i2.Played.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Played> findFirstOrThrow({
    _i3.PlayedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayedOrderByWithRelationInput>,
            _i3.PlayedOrderByWithRelationInput>?
        orderBy,
    _i3.PlayedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlayedScalar, Iterable<_i3.PlayedScalar>>? distinct,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played>(
      action: 'findFirstplayedOrThrow',
      result: result,
      factory: (e) => _i2.Played.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Played>> findMany({
    _i3.PlayedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayedOrderByWithRelationInput>,
            _i3.PlayedOrderByWithRelationInput>?
        orderBy,
    _i3.PlayedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlayedScalar, Iterable<_i3.PlayedScalar>>? distinct,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Played>>(
      action: 'findManyplayed',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Played.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Played> create({
    required _i1
        .PrismaUnion<_i3.PlayedCreateInput, _i3.PlayedUncheckedCreateInput>
        data,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played>(
      action: 'createOneplayed',
      result: result,
      factory: (e) => _i2.Played.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PlayedCreateManyInput,
            Iterable<_i3.PlayedCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyplayed',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Played?> update({
    required _i1
        .PrismaUnion<_i3.PlayedUpdateInput, _i3.PlayedUncheckedUpdateInput>
        data,
    required _i3.PlayedWhereUniqueInput where,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played?>(
      action: 'updateOneplayed',
      result: result,
      factory: (e) => e != null ? _i2.Played.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PlayedUpdateManyMutationInput,
            _i3.PlayedUncheckedUpdateManyInput>
        data,
    _i3.PlayedWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyplayed',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Played> upsert({
    required _i3.PlayedWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PlayedCreateInput, _i3.PlayedUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PlayedUpdateInput, _i3.PlayedUncheckedUpdateInput>
        update,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played>(
      action: 'upsertOneplayed',
      result: result,
      factory: (e) => _i2.Played.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Played?> delete({
    required _i3.PlayedWhereUniqueInput where,
    _i3.PlayedSelect? select,
    _i3.PlayedInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Played?>(
      action: 'deleteOneplayed',
      result: result,
      factory: (e) => e != null ? _i2.Played.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PlayedWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyplayed',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PlayedGroupByOutputType>> groupBy({
    _i3.PlayedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayedOrderByWithAggregationInput>,
            _i3.PlayedOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PlayedScalar>, _i3.PlayedScalar> by,
    _i3.PlayedScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PlayedGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PlayedGroupByOutputType>>(
      action: 'groupByplayed',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PlayedGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePlayed> aggregate({
    _i3.PlayedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlayedOrderByWithRelationInput>,
            _i3.PlayedOrderByWithRelationInput>?
        orderBy,
    _i3.PlayedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePlayedSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'played',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePlayed>(
      action: 'aggregateplayed',
      result: result,
      factory: (e) => _i3.AggregatePlayed.fromJson(e),
    );
  }
}

class CanPlayDelegate {
  const CanPlayDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.CanPlay?> findUnique({
    required _i3.CanPlayWhereUniqueInput where,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay?>(
      action: 'findUniquecan_play',
      result: result,
      factory: (e) => e != null ? _i2.CanPlay.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CanPlay> findUniqueOrThrow({
    required _i3.CanPlayWhereUniqueInput where,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay>(
      action: 'findUniquecan_playOrThrow',
      result: result,
      factory: (e) => _i2.CanPlay.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CanPlay?> findFirst({
    _i3.CanPlayWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CanPlayOrderByWithRelationInput>,
            _i3.CanPlayOrderByWithRelationInput>?
        orderBy,
    _i3.CanPlayWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CanPlayScalar, Iterable<_i3.CanPlayScalar>>? distinct,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay?>(
      action: 'findFirstcan_play',
      result: result,
      factory: (e) => e != null ? _i2.CanPlay.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CanPlay> findFirstOrThrow({
    _i3.CanPlayWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CanPlayOrderByWithRelationInput>,
            _i3.CanPlayOrderByWithRelationInput>?
        orderBy,
    _i3.CanPlayWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CanPlayScalar, Iterable<_i3.CanPlayScalar>>? distinct,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay>(
      action: 'findFirstcan_playOrThrow',
      result: result,
      factory: (e) => _i2.CanPlay.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CanPlay>> findMany({
    _i3.CanPlayWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CanPlayOrderByWithRelationInput>,
            _i3.CanPlayOrderByWithRelationInput>?
        orderBy,
    _i3.CanPlayWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CanPlayScalar, Iterable<_i3.CanPlayScalar>>? distinct,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CanPlay>>(
      action: 'findManycan_play',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.CanPlay.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.CanPlay> create({
    required _i1
        .PrismaUnion<_i3.CanPlayCreateInput, _i3.CanPlayUncheckedCreateInput>
        data,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay>(
      action: 'createOnecan_play',
      result: result,
      factory: (e) => _i2.CanPlay.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.CanPlayCreateManyInput,
            Iterable<_i3.CanPlayCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManycan_play',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CanPlay?> update({
    required _i1
        .PrismaUnion<_i3.CanPlayUpdateInput, _i3.CanPlayUncheckedUpdateInput>
        data,
    required _i3.CanPlayWhereUniqueInput where,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay?>(
      action: 'updateOnecan_play',
      result: result,
      factory: (e) => e != null ? _i2.CanPlay.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.CanPlayUpdateManyMutationInput,
            _i3.CanPlayUncheckedUpdateManyInput>
        data,
    _i3.CanPlayWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManycan_play',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CanPlay> upsert({
    required _i3.CanPlayWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.CanPlayCreateInput, _i3.CanPlayUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.CanPlayUpdateInput, _i3.CanPlayUncheckedUpdateInput>
        update,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay>(
      action: 'upsertOnecan_play',
      result: result,
      factory: (e) => _i2.CanPlay.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CanPlay?> delete({
    required _i3.CanPlayWhereUniqueInput where,
    _i3.CanPlaySelect? select,
    _i3.CanPlayInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CanPlay?>(
      action: 'deleteOnecan_play',
      result: result,
      factory: (e) => e != null ? _i2.CanPlay.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.CanPlayWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManycan_play',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CanPlayGroupByOutputType>> groupBy({
    _i3.CanPlayWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CanPlayOrderByWithAggregationInput>,
            _i3.CanPlayOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.CanPlayScalar>, _i3.CanPlayScalar> by,
    _i3.CanPlayScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CanPlayGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CanPlayGroupByOutputType>>(
      action: 'groupBycan_play',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.CanPlayGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateCanPlay> aggregate({
    _i3.CanPlayWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CanPlayOrderByWithRelationInput>,
            _i3.CanPlayOrderByWithRelationInput>?
        orderBy,
    _i3.CanPlayWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCanPlaySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'can_play',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateCanPlay>(
      action: 'aggregatecan_play',
      result: result,
      factory: (e) => _i3.AggregateCanPlay.fromJson(e),
    );
  }
}

class HistoryDelegate {
  const HistoryDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.History?> findUnique({
    required _i3.HistoryWhereUniqueInput where,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History?>(
      action: 'findUniquehistory',
      result: result,
      factory: (e) => e != null ? _i2.History.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.History> findUniqueOrThrow({
    required _i3.HistoryWhereUniqueInput where,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History>(
      action: 'findUniquehistoryOrThrow',
      result: result,
      factory: (e) => _i2.History.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.History?> findFirst({
    _i3.HistoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HistoryOrderByWithRelationInput>,
            _i3.HistoryOrderByWithRelationInput>?
        orderBy,
    _i3.HistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.HistoryScalar, Iterable<_i3.HistoryScalar>>? distinct,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History?>(
      action: 'findFirsthistory',
      result: result,
      factory: (e) => e != null ? _i2.History.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.History> findFirstOrThrow({
    _i3.HistoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HistoryOrderByWithRelationInput>,
            _i3.HistoryOrderByWithRelationInput>?
        orderBy,
    _i3.HistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.HistoryScalar, Iterable<_i3.HistoryScalar>>? distinct,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History>(
      action: 'findFirsthistoryOrThrow',
      result: result,
      factory: (e) => _i2.History.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.History>> findMany({
    _i3.HistoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HistoryOrderByWithRelationInput>,
            _i3.HistoryOrderByWithRelationInput>?
        orderBy,
    _i3.HistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.HistoryScalar, Iterable<_i3.HistoryScalar>>? distinct,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.History>>(
      action: 'findManyhistory',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.History.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.History> create({
    required _i1
        .PrismaUnion<_i3.HistoryCreateInput, _i3.HistoryUncheckedCreateInput>
        data,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History>(
      action: 'createOnehistory',
      result: result,
      factory: (e) => _i2.History.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.HistoryCreateManyInput,
            Iterable<_i3.HistoryCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyhistory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.History?> update({
    required _i1
        .PrismaUnion<_i3.HistoryUpdateInput, _i3.HistoryUncheckedUpdateInput>
        data,
    required _i3.HistoryWhereUniqueInput where,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History?>(
      action: 'updateOnehistory',
      result: result,
      factory: (e) => e != null ? _i2.History.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.HistoryUpdateManyMutationInput,
            _i3.HistoryUncheckedUpdateManyInput>
        data,
    _i3.HistoryWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyhistory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.History> upsert({
    required _i3.HistoryWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.HistoryCreateInput, _i3.HistoryUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.HistoryUpdateInput, _i3.HistoryUncheckedUpdateInput>
        update,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History>(
      action: 'upsertOnehistory',
      result: result,
      factory: (e) => _i2.History.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.History?> delete({
    required _i3.HistoryWhereUniqueInput where,
    _i3.HistorySelect? select,
    _i3.HistoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.History?>(
      action: 'deleteOnehistory',
      result: result,
      factory: (e) => e != null ? _i2.History.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.HistoryWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyhistory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.HistoryGroupByOutputType>> groupBy({
    _i3.HistoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HistoryOrderByWithAggregationInput>,
            _i3.HistoryOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.HistoryScalar>, _i3.HistoryScalar> by,
    _i3.HistoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.HistoryGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.HistoryGroupByOutputType>>(
      action: 'groupByhistory',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.HistoryGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateHistory> aggregate({
    _i3.HistoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.HistoryOrderByWithRelationInput>,
            _i3.HistoryOrderByWithRelationInput>?
        orderBy,
    _i3.HistoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateHistorySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'history',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateHistory>(
      action: 'aggregatehistory',
      result: result,
      factory: (e) => _i3.AggregateHistory.fromJson(e),
    );
  }
}

class OpponentDelegate {
  const OpponentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Opponent?> findUnique({
    required _i3.OpponentWhereUniqueInput where,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent?>(
      action: 'findUniqueOpponent',
      result: result,
      factory: (e) => e != null ? _i2.Opponent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Opponent> findUniqueOrThrow({
    required _i3.OpponentWhereUniqueInput where,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent>(
      action: 'findUniqueOpponentOrThrow',
      result: result,
      factory: (e) => _i2.Opponent.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Opponent?> findFirst({
    _i3.OpponentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.OpponentOrderByWithRelationInput>,
            _i3.OpponentOrderByWithRelationInput>?
        orderBy,
    _i3.OpponentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.OpponentScalar, Iterable<_i3.OpponentScalar>>? distinct,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent?>(
      action: 'findFirstOpponent',
      result: result,
      factory: (e) => e != null ? _i2.Opponent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Opponent> findFirstOrThrow({
    _i3.OpponentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.OpponentOrderByWithRelationInput>,
            _i3.OpponentOrderByWithRelationInput>?
        orderBy,
    _i3.OpponentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.OpponentScalar, Iterable<_i3.OpponentScalar>>? distinct,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent>(
      action: 'findFirstOpponentOrThrow',
      result: result,
      factory: (e) => _i2.Opponent.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Opponent>> findMany({
    _i3.OpponentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.OpponentOrderByWithRelationInput>,
            _i3.OpponentOrderByWithRelationInput>?
        orderBy,
    _i3.OpponentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.OpponentScalar, Iterable<_i3.OpponentScalar>>? distinct,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Opponent>>(
      action: 'findManyOpponent',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Opponent.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Opponent> create({
    required _i1
        .PrismaUnion<_i3.OpponentCreateInput, _i3.OpponentUncheckedCreateInput>
        data,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent>(
      action: 'createOneOpponent',
      result: result,
      factory: (e) => _i2.Opponent.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.OpponentCreateManyInput,
            Iterable<_i3.OpponentCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyOpponent',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Opponent?> update({
    required _i1
        .PrismaUnion<_i3.OpponentUpdateInput, _i3.OpponentUncheckedUpdateInput>
        data,
    required _i3.OpponentWhereUniqueInput where,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent?>(
      action: 'updateOneOpponent',
      result: result,
      factory: (e) => e != null ? _i2.Opponent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.OpponentUpdateManyMutationInput,
            _i3.OpponentUncheckedUpdateManyInput>
        data,
    _i3.OpponentWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyOpponent',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Opponent> upsert({
    required _i3.OpponentWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.OpponentCreateInput, _i3.OpponentUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.OpponentUpdateInput, _i3.OpponentUncheckedUpdateInput>
        update,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent>(
      action: 'upsertOneOpponent',
      result: result,
      factory: (e) => _i2.Opponent.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Opponent?> delete({
    required _i3.OpponentWhereUniqueInput where,
    _i3.OpponentSelect? select,
    _i3.OpponentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Opponent?>(
      action: 'deleteOneOpponent',
      result: result,
      factory: (e) => e != null ? _i2.Opponent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.OpponentWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyOpponent',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.OpponentGroupByOutputType>> groupBy({
    _i3.OpponentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.OpponentOrderByWithAggregationInput>,
            _i3.OpponentOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.OpponentScalar>, _i3.OpponentScalar>
        by,
    _i3.OpponentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.OpponentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.OpponentGroupByOutputType>>(
      action: 'groupByOpponent',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.OpponentGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateOpponent> aggregate({
    _i3.OpponentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.OpponentOrderByWithRelationInput>,
            _i3.OpponentOrderByWithRelationInput>?
        orderBy,
    _i3.OpponentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateOpponentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Opponent',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateOpponent>(
      action: 'aggregateOpponent',
      result: result,
      factory: (e) => _i3.AggregateOpponent.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [
      {
        'name': 'Position',
        'values': [
          {
            'name': 'Goalkeeper',
            'dbName': null,
          },
          {
            'name': 'CenterBack',
            'dbName': null,
          },
          {
            'name': 'LeftBack',
            'dbName': null,
          },
          {
            'name': 'RightBack',
            'dbName': null,
          },
          {
            'name': 'DefensiveMidfielder',
            'dbName': null,
          },
          {
            'name': 'CentralMidfielder',
            'dbName': null,
          },
          {
            'name': 'AttackingMidfielder',
            'dbName': null,
          },
          {
            'name': 'LeftWinger',
            'dbName': null,
          },
          {
            'name': 'RightWinger',
            'dbName': null,
          },
          {
            'name': 'Striker',
            'dbName': null,
          },
        ],
        'dbName': null,
      },
      {
        'name': 'action_type',
        'values': [
          {
            'name': 'CREATE_USER',
            'dbName': null,
          },
          {
            'name': 'UPDATE_USER',
            'dbName': null,
          },
          {
            'name': 'DELETE_USER',
            'dbName': null,
          },
          {
            'name': 'CREATE_TEAM',
            'dbName': null,
          },
          {
            'name': 'UPDATE_TEAM',
            'dbName': null,
          },
          {
            'name': 'DELETE_TEAM',
            'dbName': null,
          },
          {
            'name': 'CREATE_PLAYER',
            'dbName': null,
          },
          {
            'name': 'UPDATE_PLAYER',
            'dbName': null,
          },
          {
            'name': 'DELETE_PLAYER',
            'dbName': null,
          },
          {
            'name': 'CREATE_MATCH',
            'dbName': null,
          },
          {
            'name': 'UPDATE_MATCH',
            'dbName': null,
          },
          {
            'name': 'DELETE_MATCH',
            'dbName': null,
          },
          {
            'name': 'CREATE_PLAYED',
            'dbName': null,
          },
          {
            'name': 'UPDATE_PLAYED',
            'dbName': null,
          },
          {
            'name': 'DELETE_PLAYED',
            'dbName': null,
          },
          {
            'name': 'CREATE_CAN_PLAY',
            'dbName': null,
          },
          {
            'name': 'UPDATE_CAN_PLAY',
            'dbName': null,
          },
          {
            'name': 'DELETE_CAN_PLAY',
            'dbName': null,
          },
          {
            'name': 'ADD_GOAL',
            'dbName': null,
          },
          {
            'name': 'REMOVE_GOAL',
            'dbName': null,
          },
          {
            'name': 'ADD_ASSIST',
            'dbName': null,
          },
          {
            'name': 'REMOVE_ASSIST',
            'dbName': null,
          },
          {
            'name': 'ADD_YELLOW_CARD',
            'dbName': null,
          },
          {
            'name': 'REMOVE_YELLOW_CARD',
            'dbName': null,
          },
          {
            'name': 'ADD_RED_CARD',
            'dbName': null,
          },
          {
            'name': 'REMOVE_RED_CARD',
            'dbName': null,
          },
          {
            'name': 'ADD_BLOCKED_SHOT',
            'dbName': null,
          },
          {
            'name': 'REMOVE_BLOCKED_SHOT',
            'dbName': null,
          },
          {
            'name': 'ADD_ON_TARGET_SHOT',
            'dbName': null,
          },
          {
            'name': 'REMOVE_ON_TARGET_SHOT',
            'dbName': null,
          },
          {
            'name': 'ADD_OFF_TARGET_SHOT',
            'dbName': null,
          },
          {
            'name': 'REMOVE_OFF_TARGET_SHOT',
            'dbName': null,
          },
          {
            'name': 'SWITCH_PLAYER',
            'dbName': null,
          },
        ],
        'dbName': null,
      },
    ],
    'models': [
      {
        'name': 'user',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'first_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'last_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'password',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'salt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'history',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'history',
            'relationName': 'historyTouser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'team',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'fffId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'matches',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'match',
            'relationName': 'matchteam',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'player',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'first_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'last_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'played',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'played',
            'relationName': 'playedToplayer',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'can_play',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'can_play',
            'relationName': 'can_play',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'match',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'team',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'team',
            'relationName': 'matchteam',
            'relationFromFields': ['teamId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'teamId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'opponent',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Opponent',
            'relationName': 'matchOpponent',
            'relationFromFields': ['opponentId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'opponentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'teamScore',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'opponentScore',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'address',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'isHome',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'coach',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'played',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'played',
            'relationName': 'matchToplayed',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'played',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'match',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'match',
            'relationName': 'matchToplayed',
            'relationFromFields': ['matchId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'matchId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'player',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'player',
            'relationName': 'playedToplayer',
            'relationFromFields': ['playerId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'playerId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'jerseyNumber',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'entryTime',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'leaveTime',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'goals',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'blocked',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'onTarget',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'offTarget',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assists',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'yellow',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'red',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'can_play',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'player',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'player',
            'relationName': 'can_play',
            'relationFromFields': ['playerId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'playerId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'position',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Position',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'history',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'author',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'user',
            'relationName': 'historyTouser',
            'relationFromFields': ['authorId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'authorId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'created_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'action_type',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'action_type',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'additionnal_informations',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Opponent',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'fffId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'matches',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'match',
            'relationName': 'matchOpponent',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n}\n\nmodel user {\n  id         Int       @id @default(autoincrement())\n  email      String    @unique\n  first_name String\n  last_name  String\n  password   String\n  salt       String\n  history    history[]\n}\n\nmodel team {\n  id      Int     @id @default(autoincrement())\n  name    String\n  fffId  Int\n  matches match[] @relation("matchteam")\n}\n\nenum Position {\n  Goalkeeper\n  CenterBack\n  LeftBack\n  RightBack\n  DefensiveMidfielder\n  CentralMidfielder\n  AttackingMidfielder\n  LeftWinger\n  RightWinger\n  Striker\n}\n\nmodel player {\n  id         Int        @id @default(autoincrement())\n  first_name String\n  last_name  String\n  played     played[]\n  can_play   can_play[] @relation("can_play")\n}\n\nmodel match {\n  id            Int      @id @default(autoincrement())\n  team          team?    @relation("matchteam", fields: [teamId], references: [id])\n  teamId        Int?\n  opponent      Opponent @relation("matchOpponent", fields: [opponentId], references: [id])\n  opponentId    Int\n  teamScore     Int\n  opponentScore Int\n  address       String\n  date          DateTime\n  isHome        Boolean\n  coach         String\n  played        played[]\n}\n\nmodel played {\n  id           Int      @id @default(autoincrement())\n  match        match    @relation(fields: [matchId], references: [id])\n  matchId      Int\n  player       player   @relation(fields: [playerId], references: [id])\n  playerId     Int\n  jerseyNumber Int\n  entryTime    DateTime\n  leaveTime    DateTime\n  goals        Int\n  blocked      Int\n  onTarget     Int\n  offTarget    Int\n  assists      Int\n  yellow       Boolean\n  red          Boolean\n}\n\nmodel can_play {\n  id       Int      @id @default(autoincrement())\n  player   player   @relation("can_play", fields: [playerId], references: [id])\n  playerId Int\n  position Position\n}\n\nenum action_type {\n  CREATE_USER\n  UPDATE_USER\n  DELETE_USER\n  CREATE_TEAM\n  UPDATE_TEAM\n  DELETE_TEAM\n  CREATE_PLAYER\n  UPDATE_PLAYER\n  DELETE_PLAYER\n  CREATE_MATCH\n  UPDATE_MATCH\n  DELETE_MATCH\n  CREATE_PLAYED\n  UPDATE_PLAYED\n  DELETE_PLAYED\n  CREATE_CAN_PLAY\n  UPDATE_CAN_PLAY\n  DELETE_CAN_PLAY\n  ADD_GOAL\n  REMOVE_GOAL\n  ADD_ASSIST\n  REMOVE_ASSIST\n  ADD_YELLOW_CARD\n  REMOVE_YELLOW_CARD\n  ADD_RED_CARD\n  REMOVE_RED_CARD\n  ADD_BLOCKED_SHOT\n  REMOVE_BLOCKED_SHOT\n  ADD_ON_TARGET_SHOT\n  REMOVE_ON_TARGET_SHOT\n  ADD_OFF_TARGET_SHOT\n  REMOVE_OFF_TARGET_SHOT\n  SWITCH_PLAYER\n}\n\nmodel history {\n  id                       Int         @id @default(autoincrement())\n  author                   user        @relation(fields: [authorId], references: [id])\n  authorId                 Int\n  created_at               DateTime    @default(now())\n  action_type              action_type\n  additionnal_informations String\n}\n\nmodel Opponent {\n  id   Int    @id @default(autoincrement())\n  name String\n  fffId Int\n  matches match[] @relation("matchOpponent")\n}',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  UserDelegate get user => UserDelegate._(this);

  TeamDelegate get team => TeamDelegate._(this);

  PlayerDelegate get player => PlayerDelegate._(this);

  MatchDelegate get match => MatchDelegate._(this);

  PlayedDelegate get played => PlayedDelegate._(this);

  CanPlayDelegate get canPlay => CanPlayDelegate._(this);

  HistoryDelegate get history => HistoryDelegate._(this);

  OpponentDelegate get opponent => OpponentDelegate._(this);
}
