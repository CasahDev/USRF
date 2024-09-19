// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

class UserCountOutputType {
  const UserCountOutputType({this.history});

  factory UserCountOutputType.fromJson(Map json) =>
      UserCountOutputType(history: json['history']);

  final int? history;

  Map<String, dynamic> toJson() => {'history': history};
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
  });

  final int? id;

  final String? email;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
      };
}

class HistoryAuthorArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryAuthorArgs({
    this.select,
    this.include,
  });

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class HistoryInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryInclude({this.author});

  final _i1.PrismaUnion<bool, _i2.HistoryAuthorArgs>? author;

  @override
  Map<String, dynamic> toJson() => {'author': author};
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final int? equals;

  final _i1.PrismaUnion<Iterable<int>, int>? $in;

  final _i1.PrismaUnion<Iterable<int>, int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final int? equals;

  final _i1.PrismaUnion<Iterable<int>, int>? $in;

  final _i1.PrismaUnion<Iterable<int>, int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedEnumactionTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumactionTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i3.ActionType? equals;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? notIn;

  final _i1.PrismaUnion<_i3.ActionType, _i2.NestedEnumactionTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumactionTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumactionTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i3.ActionType? equals;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? notIn;

  final _i1.PrismaUnion<_i3.ActionType, _i2.NestedEnumactionTypeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class HistoryListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.HistoryWhereInput? every;

  final _i2.HistoryWhereInput? some;

  final _i2.HistoryWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.history,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringFilter, String>? salt;

  final _i2.HistoryListRelationFilter? history;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
      };
}

class UserRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.UserWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class HistoryWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.author,
  });

  final _i1.PrismaUnion<_i2.HistoryWhereInput, Iterable<_i2.HistoryWhereInput>>?
      AND;

  final Iterable<_i2.HistoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.HistoryWhereInput, Iterable<_i2.HistoryWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? authorId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.EnumactionTypeFilter, _i3.ActionType>? actionType;

  final _i1.PrismaUnion<_i2.StringFilter, String>? additionnalInformations;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? author;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        'author': author,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class HistoryOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.history,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? password;

  final _i2.SortOrder? salt;

  final _i2.HistoryOrderByRelationAggregateInput? history;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
      };
}

class HistoryOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryOrderByWithRelationInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.author,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? actionType;

  final _i2.SortOrder? additionnalInformations;

  final _i2.UserOrderByWithRelationInput? author;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        'author': author,
      };
}

class HistoryWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

enum HistoryScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'history'),
  authorId<int>('authorId', 'history'),
  createdAt<DateTime>('created_at', 'history'),
  actionType<_i3.ActionType>('action_type', 'history'),
  additionnalInformations<String>('additionnal_informations', 'history');

  const HistoryScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserHistoryArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserHistoryArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.HistoryWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.HistoryOrderByWithRelationInput>,
      _i2.HistoryOrderByWithRelationInput>? orderBy;

  final _i2.HistoryWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.HistoryScalar, Iterable<_i2.HistoryScalar>>?
      distinct;

  final _i2.HistorySelect? select;

  final _i2.HistoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UserCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOutputTypeSelect({this.history});

  final bool? history;

  @override
  Map<String, dynamic> toJson() => {'history': history};
}

class UserCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountArgs({this.select});

  final _i2.UserCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({
    this.history,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UserHistoryArgs>? history;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'history': history,
        '_count': $count,
      };
}

class HistorySelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistorySelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.author,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? actionType;

  final bool? additionnalInformations;

  final _i1.PrismaUnion<bool, _i2.HistoryAuthorArgs>? author;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        'author': author,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.history,
    this.$count,
  });

  final bool? id;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final bool? password;

  final bool? salt;

  final _i1.PrismaUnion<bool, _i2.UserHistoryArgs>? history;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
        '_count': $count,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'user'),
  email<String>('email', 'user'),
  firstName<String>('first_name', 'user'),
  lastName<String>('last_name', 'user'),
  password<String>('password', 'user'),
  salt<String>('salt', 'user');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class HistoryCreateWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateWithoutAuthorInput({
    this.createdAt,
    required this.actionType,
    required this.additionnalInformations,
  });

  final DateTime? createdAt;

  final _i3.ActionType actionType;

  final String additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryUncheckedCreateWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedCreateWithoutAuthorInput({
    this.id,
    this.createdAt,
    required this.actionType,
    required this.additionnalInformations,
  });

  final int? id;

  final DateTime? createdAt;

  final _i3.ActionType actionType;

  final String additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryCreateOrConnectWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateOrConnectWithoutAuthorInput({
    required this.where,
    required this.create,
  });

  final _i2.HistoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HistoryCreateWithoutAuthorInput,
      _i2.HistoryUncheckedCreateWithoutAuthorInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class HistoryCreateManyAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateManyAuthorInput({
    this.id,
    this.createdAt,
    required this.actionType,
    required this.additionnalInformations,
  });

  final int? id;

  final DateTime? createdAt;

  final _i3.ActionType actionType;

  final String additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryCreateManyAuthorInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateManyAuthorInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.HistoryCreateManyAuthorInput,
      Iterable<_i2.HistoryCreateManyAuthorInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class HistoryCreateNestedManyWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateNestedManyWithoutAuthorInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.HistoryCreateWithoutAuthorInput,
      _i1.PrismaUnion<
          Iterable<_i2.HistoryCreateWithoutAuthorInput>,
          _i1.PrismaUnion<_i2.HistoryUncheckedCreateWithoutAuthorInput,
              Iterable<_i2.HistoryUncheckedCreateWithoutAuthorInput>>>>? create;

  final _i1.PrismaUnion<_i2.HistoryCreateOrConnectWithoutAuthorInput,
      Iterable<_i2.HistoryCreateOrConnectWithoutAuthorInput>>? connectOrCreate;

  final _i2.HistoryCreateManyAuthorInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.salt,
    this.history,
  });

  final String email;

  final String firstName;

  final String lastName;

  final String password;

  final String salt;

  final _i2.HistoryCreateNestedManyWithoutAuthorInput? history;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
      };
}

class HistoryUncheckedCreateNestedManyWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedCreateNestedManyWithoutAuthorInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.HistoryCreateWithoutAuthorInput,
      _i1.PrismaUnion<
          Iterable<_i2.HistoryCreateWithoutAuthorInput>,
          _i1.PrismaUnion<_i2.HistoryUncheckedCreateWithoutAuthorInput,
              Iterable<_i2.HistoryUncheckedCreateWithoutAuthorInput>>>>? create;

  final _i1.PrismaUnion<_i2.HistoryCreateOrConnectWithoutAuthorInput,
      Iterable<_i2.HistoryCreateOrConnectWithoutAuthorInput>>? connectOrCreate;

  final _i2.HistoryCreateManyAuthorInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.salt,
    this.history,
  });

  final int? id;

  final String email;

  final String firstName;

  final String lastName;

  final String password;

  final String salt;

  final _i2.HistoryUncheckedCreateNestedManyWithoutAuthorInput? history;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.salt,
  });

  final int? id;

  final String email;

  final String firstName;

  final String lastName;

  final String password;

  final String salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class EnumactionTypeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumactionTypeFieldUpdateOperationsInput({this.set});

  final _i3.ActionType? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class HistoryUpdateWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpdateWithoutAuthorInput({
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class HistoryUncheckedUpdateWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedUpdateWithoutAuthorInput({
    this.id,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryUpsertWithWhereUniqueWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpsertWithWhereUniqueWithoutAuthorInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.HistoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HistoryUpdateWithoutAuthorInput,
      _i2.HistoryUncheckedUpdateWithoutAuthorInput> update;

  final _i1.PrismaUnion<_i2.HistoryCreateWithoutAuthorInput,
      _i2.HistoryUncheckedCreateWithoutAuthorInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class HistoryUpdateWithWhereUniqueWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpdateWithWhereUniqueWithoutAuthorInput({
    required this.where,
    required this.data,
  });

  final _i2.HistoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.HistoryUpdateWithoutAuthorInput,
      _i2.HistoryUncheckedUpdateWithoutAuthorInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HistoryScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<_i2.HistoryScalarWhereInput,
      Iterable<_i2.HistoryScalarWhereInput>>? AND;

  final Iterable<_i2.HistoryScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.HistoryScalarWhereInput,
      Iterable<_i2.HistoryScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? authorId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.EnumactionTypeFilter, _i3.ActionType>? actionType;

  final _i1.PrismaUnion<_i2.StringFilter, String>? additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpdateManyMutationInput({
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryUncheckedUpdateManyWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedUpdateManyWithoutHistoryInput({
    this.id,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryUpdateManyWithWhereWithoutAuthorInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpdateManyWithWhereWithoutAuthorInput({
    required this.where,
    required this.data,
  });

  final _i2.HistoryScalarWhereInput where;

  final _i1.PrismaUnion<_i2.HistoryUpdateManyMutationInput,
      _i2.HistoryUncheckedUpdateManyWithoutHistoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class HistoryUpdateManyWithoutAuthorNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpdateManyWithoutAuthorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.HistoryCreateWithoutAuthorInput,
      _i1.PrismaUnion<
          Iterable<_i2.HistoryCreateWithoutAuthorInput>,
          _i1.PrismaUnion<_i2.HistoryUncheckedCreateWithoutAuthorInput,
              Iterable<_i2.HistoryUncheckedCreateWithoutAuthorInput>>>>? create;

  final _i1.PrismaUnion<_i2.HistoryCreateOrConnectWithoutAuthorInput,
      Iterable<_i2.HistoryCreateOrConnectWithoutAuthorInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.HistoryUpsertWithWhereUniqueWithoutAuthorInput,
      Iterable<_i2.HistoryUpsertWithWhereUniqueWithoutAuthorInput>>? upsert;

  final _i2.HistoryCreateManyAuthorInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.HistoryUpdateWithWhereUniqueWithoutAuthorInput,
      Iterable<_i2.HistoryUpdateWithWhereUniqueWithoutAuthorInput>>? update;

  final _i1.PrismaUnion<_i2.HistoryUpdateManyWithWhereWithoutAuthorInput,
      Iterable<_i2.HistoryUpdateManyWithWhereWithoutAuthorInput>>? updateMany;

  final _i1.PrismaUnion<_i2.HistoryScalarWhereInput,
      Iterable<_i2.HistoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.history,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? salt;

  final _i2.HistoryUpdateManyWithoutAuthorNestedInput? history;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
      };
}

class HistoryUncheckedUpdateManyWithoutAuthorNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedUpdateManyWithoutAuthorNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.HistoryCreateWithoutAuthorInput,
      _i1.PrismaUnion<
          Iterable<_i2.HistoryCreateWithoutAuthorInput>,
          _i1.PrismaUnion<_i2.HistoryUncheckedCreateWithoutAuthorInput,
              Iterable<_i2.HistoryUncheckedCreateWithoutAuthorInput>>>>? create;

  final _i1.PrismaUnion<_i2.HistoryCreateOrConnectWithoutAuthorInput,
      Iterable<_i2.HistoryCreateOrConnectWithoutAuthorInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.HistoryUpsertWithWhereUniqueWithoutAuthorInput,
      Iterable<_i2.HistoryUpsertWithWhereUniqueWithoutAuthorInput>>? upsert;

  final _i2.HistoryCreateManyAuthorInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.HistoryWhereUniqueInput,
      Iterable<_i2.HistoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.HistoryUpdateWithWhereUniqueWithoutAuthorInput,
      Iterable<_i2.HistoryUpdateWithWhereUniqueWithoutAuthorInput>>? update;

  final _i1.PrismaUnion<_i2.HistoryUpdateManyWithWhereWithoutAuthorInput,
      Iterable<_i2.HistoryUpdateManyWithWhereWithoutAuthorInput>>? updateMany;

  final _i1.PrismaUnion<_i2.HistoryScalarWhereInput,
      Iterable<_i2.HistoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.history,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? salt;

  final _i2.HistoryUncheckedUpdateManyWithoutAuthorNestedInput? history;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? salt;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        password: json['password'],
        salt: json['salt'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? firstName;

  final int? lastName;

  final int? password;

  final int? salt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        '_all': $all,
      };
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType({this.id});

  factory UserAvgAggregateOutputType.fromJson(Map json) =>
      UserAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType({this.id});

  factory UserSumAggregateOutputType.fromJson(Map json) =>
      UserSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        password: json['password'],
        salt: json['salt'],
      );

  final int? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? password;

  final String? salt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        password: json['password'],
        salt: json['salt'],
      );

  final int? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? password;

  final String? salt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        password: json['password'],
        salt: json['salt'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? password;

  final String? salt;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? password;

  final _i2.SortOrder? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? password;

  final _i2.SortOrder? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? password;

  final _i2.SortOrder? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? password;

  final _i2.SortOrder? salt;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserAvgOrderByAggregateInput? $avg;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  final _i2.UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final double? equals;

  final _i1.PrismaUnion<Iterable<double>, double>? $in;

  final _i1.PrismaUnion<Iterable<double>, double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final int? equals;

  final _i1.PrismaUnion<Iterable<int>, int>? $in;

  final _i1.PrismaUnion<Iterable<int>, int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final int? equals;

  final _i1.PrismaUnion<Iterable<int>, int>? $in;

  final _i1.PrismaUnion<Iterable<int>, int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final String? equals;

  final _i1.PrismaUnion<Iterable<String>, String>? $in;

  final _i1.PrismaUnion<Iterable<String>, String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? salt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final bool? password;

  final bool? salt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final bool? id;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final bool? password;

  final bool? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final bool? id;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final bool? password;

  final bool? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? firstName;

  final bool? lastName;

  final bool? password;

  final bool? salt;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUserSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class OpponentCountOutputType {
  const OpponentCountOutputType({this.matches});

  factory OpponentCountOutputType.fromJson(Map json) =>
      OpponentCountOutputType(matches: json['matches']);

  final int? matches;

  Map<String, dynamic> toJson() => {'matches': matches};
}

class PlayerCountOutputType {
  const PlayerCountOutputType({
    this.played,
    this.canPlay,
  });

  factory PlayerCountOutputType.fromJson(Map json) => PlayerCountOutputType(
        played: json['played'],
        canPlay: json['can_play'],
      );

  final int? played;

  final int? canPlay;

  Map<String, dynamic> toJson() => {
        'played': played,
        'can_play': canPlay,
      };
}

class MatchCountOutputType {
  const MatchCountOutputType({this.played});

  factory MatchCountOutputType.fromJson(Map json) =>
      MatchCountOutputType(played: json['played']);

  final int? played;

  Map<String, dynamic> toJson() => {'played': played};
}

class TeamCountOutputType {
  const TeamCountOutputType({this.matches});

  factory TeamCountOutputType.fromJson(Map json) =>
      TeamCountOutputType(matches: json['matches']);

  final int? matches;

  Map<String, dynamic> toJson() => {'matches': matches};
}

class TeamWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class MatchTeamArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchTeamArgs({
    this.select,
    this.include,
  });

  final _i2.TeamSelect? select;

  final _i2.TeamInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class MatchListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.MatchWhereInput? every;

  final _i2.MatchWhereInput? some;

  final _i2.MatchWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class TeamWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.fffId,
    this.matches,
  });

  final _i1.PrismaUnion<_i2.TeamWhereInput, Iterable<_i2.TeamWhereInput>>? AND;

  final Iterable<_i2.TeamWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TeamWhereInput, Iterable<_i2.TeamWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.IntFilter, int>? fffId;

  final _i2.MatchListRelationFilter? matches;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class TeamRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.TeamWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.TeamWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class OpponentWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.fffId,
    this.matches,
  });

  final _i1
      .PrismaUnion<_i2.OpponentWhereInput, Iterable<_i2.OpponentWhereInput>>?
      AND;

  final Iterable<_i2.OpponentWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.OpponentWhereInput, Iterable<_i2.OpponentWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.IntFilter, int>? fffId;

  final _i2.MatchListRelationFilter? matches;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class OpponentRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.OpponentWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.OpponentWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class MatchRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.MatchWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.MatchWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedEnumPositionFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumPositionFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i3.Position? equals;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? $in;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? notIn;

  final _i1.PrismaUnion<_i3.Position, _i2.NestedEnumPositionFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumPositionFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumPositionFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i3.Position? equals;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? $in;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? notIn;

  final _i1.PrismaUnion<_i3.Position, _i2.NestedEnumPositionFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class CanPlayWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.playerId,
    this.position,
    this.player,
  });

  final _i1.PrismaUnion<_i2.CanPlayWhereInput, Iterable<_i2.CanPlayWhereInput>>?
      AND;

  final Iterable<_i2.CanPlayWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CanPlayWhereInput, Iterable<_i2.CanPlayWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? playerId;

  final _i1.PrismaUnion<_i2.EnumPositionFilter, _i3.Position>? position;

  final _i1.PrismaUnion<_i2.PlayerRelationFilter, _i2.PlayerWhereInput>? player;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'playerId': playerId,
        'position': position,
        'player': player,
      };
}

class CanPlayListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.CanPlayWhereInput? every;

  final _i2.CanPlayWhereInput? some;

  final _i2.CanPlayWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class PlayerWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.firstName,
    this.lastName,
    this.played,
    this.canPlay,
  });

  final _i1.PrismaUnion<_i2.PlayerWhereInput, Iterable<_i2.PlayerWhereInput>>?
      AND;

  final Iterable<_i2.PlayerWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlayerWhereInput, Iterable<_i2.PlayerWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastName;

  final _i2.PlayedListRelationFilter? played;

  final _i2.CanPlayListRelationFilter? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
      };
}

class PlayerRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.PlayerWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.PlayerWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class PlayedWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.match,
    this.player,
  });

  final _i1.PrismaUnion<_i2.PlayedWhereInput, Iterable<_i2.PlayedWhereInput>>?
      AND;

  final Iterable<_i2.PlayedWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlayedWhereInput, Iterable<_i2.PlayedWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? matchId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? playerId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? jerseyNumber;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? entryTime;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? leaveTime;

  final _i1.PrismaUnion<_i2.IntFilter, int>? goals;

  final _i1.PrismaUnion<_i2.IntFilter, int>? blocked;

  final _i1.PrismaUnion<_i2.IntFilter, int>? onTarget;

  final _i1.PrismaUnion<_i2.IntFilter, int>? offTarget;

  final _i1.PrismaUnion<_i2.IntFilter, int>? assists;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? yellow;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? red;

  final _i1.PrismaUnion<_i2.MatchRelationFilter, _i2.MatchWhereInput>? match;

  final _i1.PrismaUnion<_i2.PlayerRelationFilter, _i2.PlayerWhereInput>? player;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
        'player': player,
      };
}

class PlayedListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.PlayedWhereInput? every;

  final _i2.PlayedWhereInput? some;

  final _i2.PlayedWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class MatchWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.team,
    this.opponent,
    this.played,
  });

  final _i1.PrismaUnion<_i2.MatchWhereInput, Iterable<_i2.MatchWhereInput>>?
      AND;

  final Iterable<_i2.MatchWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MatchWhereInput, Iterable<_i2.MatchWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      teamId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? opponentId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? teamScore;

  final _i1.PrismaUnion<_i2.IntFilter, int>? opponentScore;

  final _i1.PrismaUnion<_i2.StringFilter, String>? address;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isHome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? coach;

  final _i1.PrismaUnion<_i2.TeamRelationFilter,
      _i1.PrismaUnion<_i2.TeamWhereInput, _i1.PrismaNull>>? team;

  final _i1.PrismaUnion<_i2.OpponentRelationFilter, _i2.OpponentWhereInput>?
      opponent;

  final _i2.PlayedListRelationFilter? played;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
        'played': played,
      };
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class MatchOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class TeamOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamOrderByWithRelationInput({
    this.id,
    this.name,
    this.fffId,
    this.matches,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  final _i2.MatchOrderByRelationAggregateInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class OpponentOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentOrderByWithRelationInput({
    this.id,
    this.name,
    this.fffId,
    this.matches,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  final _i2.MatchOrderByRelationAggregateInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class PlayedOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class MatchOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchOrderByWithRelationInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.team,
    this.opponent,
    this.played,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  final _i2.SortOrder? address;

  final _i2.SortOrder? date;

  final _i2.SortOrder? isHome;

  final _i2.SortOrder? coach;

  final _i2.TeamOrderByWithRelationInput? team;

  final _i2.OpponentOrderByWithRelationInput? opponent;

  final _i2.PlayedOrderByRelationAggregateInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
        'played': played,
      };
}

class MatchWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

enum MatchScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'match'),
  teamId<int>('teamId', 'match'),
  opponentId<int>('opponentId', 'match'),
  teamScore<int>('teamScore', 'match'),
  opponentScore<int>('opponentScore', 'match'),
  address<String>('address', 'match'),
  date<DateTime>('date', 'match'),
  isHome<bool>('isHome', 'match'),
  coach<String>('coach', 'match');

  const MatchScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class OpponentMatchesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentMatchesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.MatchWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.MatchOrderByWithRelationInput>,
      _i2.MatchOrderByWithRelationInput>? orderBy;

  final _i2.MatchWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.MatchScalar, Iterable<_i2.MatchScalar>>? distinct;

  final _i2.MatchSelect? select;

  final _i2.MatchInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class OpponentCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCountOutputTypeSelect({this.matches});

  final bool? matches;

  @override
  Map<String, dynamic> toJson() => {'matches': matches};
}

class OpponentCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCountArgs({this.select});

  final _i2.OpponentCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class OpponentSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentSelect({
    this.id,
    this.name,
    this.fffId,
    this.matches,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  final _i1.PrismaUnion<bool, _i2.OpponentMatchesArgs>? matches;

  final _i1.PrismaUnion<bool, _i2.OpponentCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
        '_count': $count,
      };
}

class OpponentInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentInclude({
    this.matches,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.OpponentMatchesArgs>? matches;

  final _i1.PrismaUnion<bool, _i2.OpponentCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'matches': matches,
        '_count': $count,
      };
}

class MatchOpponentArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchOpponentArgs({
    this.select,
    this.include,
  });

  final _i2.OpponentSelect? select;

  final _i2.OpponentInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PlayedMatchArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedMatchArgs({
    this.select,
    this.include,
  });

  final _i2.MatchSelect? select;

  final _i2.MatchInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CanPlayOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class PlayerOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerOrderByWithRelationInput({
    this.id,
    this.firstName,
    this.lastName,
    this.played,
    this.canPlay,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.PlayedOrderByRelationAggregateInput? played;

  final _i2.CanPlayOrderByRelationAggregateInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
      };
}

class PlayedOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedOrderByWithRelationInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.match,
    this.player,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? entryTime;

  final _i2.SortOrder? leaveTime;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  final _i2.SortOrder? yellow;

  final _i2.SortOrder? red;

  final _i2.MatchOrderByWithRelationInput? match;

  final _i2.PlayerOrderByWithRelationInput? player;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
        'player': player,
      };
}

class PlayedWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

enum PlayedScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'played'),
  matchId<int>('matchId', 'played'),
  playerId<int>('playerId', 'played'),
  jerseyNumber<int>('jerseyNumber', 'played'),
  entryTime<DateTime>('entryTime', 'played'),
  leaveTime<DateTime>('leaveTime', 'played'),
  goals<int>('goals', 'played'),
  blocked<int>('blocked', 'played'),
  onTarget<int>('onTarget', 'played'),
  offTarget<int>('offTarget', 'played'),
  assists<int>('assists', 'played'),
  yellow<bool>('yellow', 'played'),
  red<bool>('red', 'played');

  const PlayedScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PlayerPlayedArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerPlayedArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlayedWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlayedOrderByWithRelationInput>,
      _i2.PlayedOrderByWithRelationInput>? orderBy;

  final _i2.PlayedWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlayedScalar, Iterable<_i2.PlayedScalar>>? distinct;

  final _i2.PlayedSelect? select;

  final _i2.PlayedInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class CanPlayPlayerArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayPlayerArgs({
    this.select,
    this.include,
  });

  final _i2.PlayerSelect? select;

  final _i2.PlayerInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CanPlaySelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlaySelect({
    this.id,
    this.playerId,
    this.position,
    this.player,
  });

  final bool? id;

  final bool? playerId;

  final bool? position;

  final _i1.PrismaUnion<bool, _i2.CanPlayPlayerArgs>? player;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
        'player': player,
      };
}

class CanPlayInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayInclude({this.player});

  final _i1.PrismaUnion<bool, _i2.CanPlayPlayerArgs>? player;

  @override
  Map<String, dynamic> toJson() => {'player': player};
}

class CanPlayOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayOrderByWithRelationInput({
    this.id,
    this.playerId,
    this.position,
    this.player,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? position;

  final _i2.PlayerOrderByWithRelationInput? player;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
        'player': player,
      };
}

class CanPlayWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

enum CanPlayScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'can_play'),
  playerId<int>('playerId', 'can_play'),
  position<_i3.Position>('position', 'can_play');

  const CanPlayScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class PlayerCanPlayArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCanPlayArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.CanPlayWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.CanPlayOrderByWithRelationInput>,
      _i2.CanPlayOrderByWithRelationInput>? orderBy;

  final _i2.CanPlayWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.CanPlayScalar, Iterable<_i2.CanPlayScalar>>?
      distinct;

  final _i2.CanPlaySelect? select;

  final _i2.CanPlayInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class PlayerCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCountOutputTypeSelect({
    this.played,
    this.canPlay,
  });

  final bool? played;

  final bool? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'played': played,
        'can_play': canPlay,
      };
}

class PlayerCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCountArgs({this.select});

  final _i2.PlayerCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayerInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerInclude({
    this.played,
    this.canPlay,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.PlayerPlayedArgs>? played;

  final _i1.PrismaUnion<bool, _i2.PlayerCanPlayArgs>? canPlay;

  final _i1.PrismaUnion<bool, _i2.PlayerCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'played': played,
        'can_play': canPlay,
        '_count': $count,
      };
}

class PlayedPlayerArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedPlayerArgs({
    this.select,
    this.include,
  });

  final _i2.PlayerSelect? select;

  final _i2.PlayerInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class PlayedInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedInclude({
    this.match,
    this.player,
  });

  final _i1.PrismaUnion<bool, _i2.PlayedMatchArgs>? match;

  final _i1.PrismaUnion<bool, _i2.PlayedPlayerArgs>? player;

  @override
  Map<String, dynamic> toJson() => {
        'match': match,
        'player': player,
      };
}

class PlayerSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerSelect({
    this.id,
    this.firstName,
    this.lastName,
    this.played,
    this.canPlay,
    this.$count,
  });

  final bool? id;

  final bool? firstName;

  final bool? lastName;

  final _i1.PrismaUnion<bool, _i2.PlayerPlayedArgs>? played;

  final _i1.PrismaUnion<bool, _i2.PlayerCanPlayArgs>? canPlay;

  final _i1.PrismaUnion<bool, _i2.PlayerCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
        '_count': $count,
      };
}

class PlayedSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.match,
    this.player,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? entryTime;

  final bool? leaveTime;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  final bool? yellow;

  final bool? red;

  final _i1.PrismaUnion<bool, _i2.PlayedMatchArgs>? match;

  final _i1.PrismaUnion<bool, _i2.PlayedPlayerArgs>? player;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
        'player': player,
      };
}

class MatchPlayedArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchPlayedArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.PlayedWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.PlayedOrderByWithRelationInput>,
      _i2.PlayedOrderByWithRelationInput>? orderBy;

  final _i2.PlayedWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.PlayedScalar, Iterable<_i2.PlayedScalar>>? distinct;

  final _i2.PlayedSelect? select;

  final _i2.PlayedInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class MatchCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCountOutputTypeSelect({this.played});

  final bool? played;

  @override
  Map<String, dynamic> toJson() => {'played': played};
}

class MatchCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCountArgs({this.select});

  final _i2.MatchCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MatchInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchInclude({
    this.team,
    this.opponent,
    this.played,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.MatchTeamArgs>? team;

  final _i1.PrismaUnion<bool, _i2.MatchOpponentArgs>? opponent;

  final _i1.PrismaUnion<bool, _i2.MatchPlayedArgs>? played;

  final _i1.PrismaUnion<bool, _i2.MatchCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'team': team,
        'opponent': opponent,
        'played': played,
        '_count': $count,
      };
}

class TeamMatchesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamMatchesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.MatchWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.MatchOrderByWithRelationInput>,
      _i2.MatchOrderByWithRelationInput>? orderBy;

  final _i2.MatchWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.MatchScalar, Iterable<_i2.MatchScalar>>? distinct;

  final _i2.MatchSelect? select;

  final _i2.MatchInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class TeamCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCountOutputTypeSelect({this.matches});

  final bool? matches;

  @override
  Map<String, dynamic> toJson() => {'matches': matches};
}

class TeamCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCountArgs({this.select});

  final _i2.TeamCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TeamInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamInclude({
    this.matches,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.TeamMatchesArgs>? matches;

  final _i1.PrismaUnion<bool, _i2.TeamCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'matches': matches,
        '_count': $count,
      };
}

class MatchSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.team,
    this.opponent,
    this.played,
    this.$count,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  final bool? address;

  final bool? date;

  final bool? isHome;

  final bool? coach;

  final _i1.PrismaUnion<bool, _i2.MatchTeamArgs>? team;

  final _i1.PrismaUnion<bool, _i2.MatchOpponentArgs>? opponent;

  final _i1.PrismaUnion<bool, _i2.MatchPlayedArgs>? played;

  final _i1.PrismaUnion<bool, _i2.MatchCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
        'played': played,
        '_count': $count,
      };
}

class TeamSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamSelect({
    this.id,
    this.name,
    this.fffId,
    this.matches,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  final _i1.PrismaUnion<bool, _i2.TeamMatchesArgs>? matches;

  final _i1.PrismaUnion<bool, _i2.TeamCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
        '_count': $count,
      };
}

enum TeamScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'team'),
  name$<String>('name', 'team'),
  fffId<int>('fffId', 'team');

  const TeamScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class OpponentCreateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCreateWithoutMatchesInput({
    required this.name,
    required this.fffId,
  });

  final String name;

  final int fffId;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
      };
}

class OpponentUncheckedCreateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUncheckedCreateWithoutMatchesInput({
    this.id,
    required this.name,
    required this.fffId,
  });

  final int? id;

  final String name;

  final int fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class OpponentCreateOrConnectWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCreateOrConnectWithoutMatchesInput({
    required this.where,
    required this.create,
  });

  final _i2.OpponentWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.OpponentCreateWithoutMatchesInput,
      _i2.OpponentUncheckedCreateWithoutMatchesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class OpponentCreateNestedOneWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCreateNestedOneWithoutMatchesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.OpponentCreateWithoutMatchesInput,
      _i2.OpponentUncheckedCreateWithoutMatchesInput>? create;

  final _i2.OpponentCreateOrConnectWithoutMatchesInput? connectOrCreate;

  final _i2.OpponentWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CanPlayCreateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateWithoutPlayerInput({required this.position});

  final _i3.Position position;

  @override
  Map<String, dynamic> toJson() => {'position': position};
}

class CanPlayUncheckedCreateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedCreateWithoutPlayerInput({
    this.id,
    required this.position,
  });

  final int? id;

  final _i3.Position position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'position': position,
      };
}

class CanPlayCreateOrConnectWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateOrConnectWithoutPlayerInput({
    required this.where,
    required this.create,
  });

  final _i2.CanPlayWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CanPlayCreateWithoutPlayerInput,
      _i2.CanPlayUncheckedCreateWithoutPlayerInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CanPlayCreateManyPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateManyPlayerInput({
    this.id,
    required this.position,
  });

  final int? id;

  final _i3.Position position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'position': position,
      };
}

class CanPlayCreateManyPlayerInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateManyPlayerInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.CanPlayCreateManyPlayerInput,
      Iterable<_i2.CanPlayCreateManyPlayerInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class CanPlayCreateNestedManyWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateNestedManyWithoutPlayerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CanPlayCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.CanPlayCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.CanPlayUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.CanPlayUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.CanPlayCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.CanPlayCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i2.CanPlayCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlayerCreateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateWithoutPlayedInput({
    required this.firstName,
    required this.lastName,
    this.canPlay,
  });

  final String firstName;

  final String lastName;

  final _i2.CanPlayCreateNestedManyWithoutPlayerInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'can_play': canPlay,
      };
}

class CanPlayUncheckedCreateNestedManyWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedCreateNestedManyWithoutPlayerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.CanPlayCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.CanPlayCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.CanPlayUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.CanPlayUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.CanPlayCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.CanPlayCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i2.CanPlayCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlayerUncheckedCreateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedCreateWithoutPlayedInput({
    this.id,
    required this.firstName,
    required this.lastName,
    this.canPlay,
  });

  final int? id;

  final String firstName;

  final String lastName;

  final _i2.CanPlayUncheckedCreateNestedManyWithoutPlayerInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'can_play': canPlay,
      };
}

class PlayerWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerWhereUniqueInput({this.id});

  final int? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerCreateOrConnectWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateOrConnectWithoutPlayedInput({
    required this.where,
    required this.create,
  });

  final _i2.PlayerWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutPlayedInput,
      _i2.PlayerUncheckedCreateWithoutPlayedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlayerCreateNestedOneWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateNestedOneWithoutPlayedInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutPlayedInput,
      _i2.PlayerUncheckedCreateWithoutPlayedInput>? create;

  final _i2.PlayerCreateOrConnectWithoutPlayedInput? connectOrCreate;

  final _i2.PlayerWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlayedCreateWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateWithoutMatchInput({
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
    required this.player,
  });

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  final _i2.PlayerCreateNestedOneWithoutPlayedInput player;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'player': player,
      };
}

class PlayedUncheckedCreateWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedCreateWithoutMatchInput({
    this.id,
    required this.playerId,
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
  });

  final int? id;

  final int playerId;

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCreateOrConnectWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateOrConnectWithoutMatchInput({
    required this.where,
    required this.create,
  });

  final _i2.PlayedWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayedCreateWithoutMatchInput,
      _i2.PlayedUncheckedCreateWithoutMatchInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlayedCreateManyMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateManyMatchInput({
    this.id,
    required this.playerId,
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
  });

  final int? id;

  final int playerId;

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCreateManyMatchInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateManyMatchInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlayedCreateManyMatchInput,
      Iterable<_i2.PlayedCreateManyMatchInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlayedCreateNestedManyWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateNestedManyWithoutMatchInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutMatchInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutMatchInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutMatchInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutMatchInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutMatchInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutMatchInput>>? connectOrCreate;

  final _i2.PlayedCreateManyMatchInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class MatchCreateWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateWithoutTeamInput({
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    required this.opponent,
    this.played,
  });

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.OpponentCreateNestedOneWithoutMatchesInput opponent;

  final _i2.PlayedCreateNestedManyWithoutMatchInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'opponent': opponent,
        'played': played,
      };
}

class PlayedUncheckedCreateNestedManyWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedCreateNestedManyWithoutMatchInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutMatchInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutMatchInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutMatchInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutMatchInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutMatchInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutMatchInput>>? connectOrCreate;

  final _i2.PlayedCreateManyMatchInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class MatchUncheckedCreateWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedCreateWithoutTeamInput({
    this.id,
    required this.opponentId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    this.played,
  });

  final int? id;

  final int opponentId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.PlayedUncheckedCreateNestedManyWithoutMatchInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'played': played,
      };
}

class MatchCreateOrConnectWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateOrConnectWithoutTeamInput({
    required this.where,
    required this.create,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchCreateWithoutTeamInput,
      _i2.MatchUncheckedCreateWithoutTeamInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class MatchCreateManyTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateManyTeamInput({
    this.id,
    required this.opponentId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
  });

  final int? id;

  final int opponentId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchCreateManyTeamInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateManyTeamInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.MatchCreateManyTeamInput,
      Iterable<_i2.MatchCreateManyTeamInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class MatchCreateNestedManyWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateNestedManyWithoutTeamInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutTeamInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutTeamInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutTeamInput,
              Iterable<_i2.MatchUncheckedCreateWithoutTeamInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutTeamInput,
      Iterable<_i2.MatchCreateOrConnectWithoutTeamInput>>? connectOrCreate;

  final _i2.MatchCreateManyTeamInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TeamCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCreateInput({
    required this.name,
    required this.fffId,
    this.matches,
  });

  final String name;

  final int fffId;

  final _i2.MatchCreateNestedManyWithoutTeamInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class MatchUncheckedCreateNestedManyWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedCreateNestedManyWithoutTeamInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutTeamInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutTeamInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutTeamInput,
              Iterable<_i2.MatchUncheckedCreateWithoutTeamInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutTeamInput,
      Iterable<_i2.MatchCreateOrConnectWithoutTeamInput>>? connectOrCreate;

  final _i2.MatchCreateManyTeamInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class TeamUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUncheckedCreateInput({
    this.id,
    required this.name,
    required this.fffId,
    this.matches,
  });

  final int? id;

  final String name;

  final int fffId;

  final _i2.MatchUncheckedCreateNestedManyWithoutTeamInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class TeamCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCreateManyInput({
    this.id,
    required this.name,
    required this.fffId,
  });

  final int? id;

  final String name;

  final int fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class OpponentUpdateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUpdateWithoutMatchesInput({
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
      };
}

class OpponentUncheckedUpdateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUncheckedUpdateWithoutMatchesInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentUpsertWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUpsertWithoutMatchesInput({
    required this.update,
    required this.create,
  });

  final _i1.PrismaUnion<_i2.OpponentUpdateWithoutMatchesInput,
      _i2.OpponentUncheckedUpdateWithoutMatchesInput> update;

  final _i1.PrismaUnion<_i2.OpponentCreateWithoutMatchesInput,
      _i2.OpponentUncheckedCreateWithoutMatchesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
      };
}

class OpponentUpdateOneRequiredWithoutMatchesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUpdateOneRequiredWithoutMatchesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.OpponentCreateWithoutMatchesInput,
      _i2.OpponentUncheckedCreateWithoutMatchesInput>? create;

  final _i2.OpponentCreateOrConnectWithoutMatchesInput? connectOrCreate;

  final _i2.OpponentUpsertWithoutMatchesInput? upsert;

  final _i2.OpponentWhereUniqueInput? connect;

  final _i1.PrismaUnion<_i2.OpponentUpdateWithoutMatchesInput,
      _i2.OpponentUncheckedUpdateWithoutMatchesInput>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class EnumPositionFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumPositionFieldUpdateOperationsInput({this.set});

  final _i3.Position? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class CanPlayUpdateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpdateWithoutPlayerInput({this.position});

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  @override
  Map<String, dynamic> toJson() => {'position': position};
}

class CanPlayUncheckedUpdateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedUpdateWithoutPlayerInput({
    this.id,
    this.position,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'position': position,
      };
}

class CanPlayUpsertWithWhereUniqueWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpsertWithWhereUniqueWithoutPlayerInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.CanPlayWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CanPlayUpdateWithoutPlayerInput,
      _i2.CanPlayUncheckedUpdateWithoutPlayerInput> update;

  final _i1.PrismaUnion<_i2.CanPlayCreateWithoutPlayerInput,
      _i2.CanPlayUncheckedCreateWithoutPlayerInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class CanPlayUpdateWithWhereUniqueWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpdateWithWhereUniqueWithoutPlayerInput({
    required this.where,
    required this.data,
  });

  final _i2.CanPlayWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CanPlayUpdateWithoutPlayerInput,
      _i2.CanPlayUncheckedUpdateWithoutPlayerInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CanPlayScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.playerId,
    this.position,
  });

  final _i1.PrismaUnion<_i2.CanPlayScalarWhereInput,
      Iterable<_i2.CanPlayScalarWhereInput>>? AND;

  final Iterable<_i2.CanPlayScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.CanPlayScalarWhereInput,
      Iterable<_i2.CanPlayScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? playerId;

  final _i1.PrismaUnion<_i2.EnumPositionFilter, _i3.Position>? position;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpdateManyMutationInput({this.position});

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  @override
  Map<String, dynamic> toJson() => {'position': position};
}

class CanPlayUncheckedUpdateManyWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedUpdateManyWithoutCanPlayInput({
    this.id,
    this.position,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'position': position,
      };
}

class CanPlayUpdateManyWithWhereWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpdateManyWithWhereWithoutPlayerInput({
    required this.where,
    required this.data,
  });

  final _i2.CanPlayScalarWhereInput where;

  final _i1.PrismaUnion<_i2.CanPlayUpdateManyMutationInput,
      _i2.CanPlayUncheckedUpdateManyWithoutCanPlayInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CanPlayUpdateManyWithoutPlayerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpdateManyWithoutPlayerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CanPlayCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.CanPlayCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.CanPlayUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.CanPlayUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.CanPlayCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.CanPlayCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CanPlayUpsertWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.CanPlayUpsertWithWhereUniqueWithoutPlayerInput>>? upsert;

  final _i2.CanPlayCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CanPlayUpdateWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.CanPlayUpdateWithWhereUniqueWithoutPlayerInput>>? update;

  final _i1.PrismaUnion<_i2.CanPlayUpdateManyWithWhereWithoutPlayerInput,
      Iterable<_i2.CanPlayUpdateManyWithWhereWithoutPlayerInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CanPlayScalarWhereInput,
      Iterable<_i2.CanPlayScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PlayerUpdateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpdateWithoutPlayedInput({
    this.firstName,
    this.lastName,
    this.canPlay,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i2.CanPlayUpdateManyWithoutPlayerNestedInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'can_play': canPlay,
      };
}

class CanPlayUncheckedUpdateManyWithoutPlayerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedUpdateManyWithoutPlayerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.CanPlayCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.CanPlayCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.CanPlayUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.CanPlayUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.CanPlayCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.CanPlayCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.CanPlayUpsertWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.CanPlayUpsertWithWhereUniqueWithoutPlayerInput>>? upsert;

  final _i2.CanPlayCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.CanPlayWhereUniqueInput,
      Iterable<_i2.CanPlayWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.CanPlayUpdateWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.CanPlayUpdateWithWhereUniqueWithoutPlayerInput>>? update;

  final _i1.PrismaUnion<_i2.CanPlayUpdateManyWithWhereWithoutPlayerInput,
      Iterable<_i2.CanPlayUpdateManyWithWhereWithoutPlayerInput>>? updateMany;

  final _i1.PrismaUnion<_i2.CanPlayScalarWhereInput,
      Iterable<_i2.CanPlayScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PlayerUncheckedUpdateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedUpdateWithoutPlayedInput({
    this.id,
    this.firstName,
    this.lastName,
    this.canPlay,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i2.CanPlayUncheckedUpdateManyWithoutPlayerNestedInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'can_play': canPlay,
      };
}

class PlayerUpsertWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpsertWithoutPlayedInput({
    required this.update,
    required this.create,
  });

  final _i1.PrismaUnion<_i2.PlayerUpdateWithoutPlayedInput,
      _i2.PlayerUncheckedUpdateWithoutPlayedInput> update;

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutPlayedInput,
      _i2.PlayerUncheckedCreateWithoutPlayedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
      };
}

class PlayerUpdateOneRequiredWithoutPlayedNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpdateOneRequiredWithoutPlayedNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutPlayedInput,
      _i2.PlayerUncheckedCreateWithoutPlayedInput>? create;

  final _i2.PlayerCreateOrConnectWithoutPlayedInput? connectOrCreate;

  final _i2.PlayerUpsertWithoutPlayedInput? upsert;

  final _i2.PlayerWhereUniqueInput? connect;

  final _i1.PrismaUnion<_i2.PlayerUpdateWithoutPlayedInput,
      _i2.PlayerUncheckedUpdateWithoutPlayedInput>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlayedUpdateWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateWithoutMatchInput({
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.player,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  final _i2.PlayerUpdateOneRequiredWithoutPlayedNestedInput? player;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'player': player,
      };
}

class PlayedUncheckedUpdateWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateWithoutMatchInput({
    this.id,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? playerId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUpsertWithWhereUniqueWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpsertWithWhereUniqueWithoutMatchInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlayedWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithoutMatchInput,
      _i2.PlayedUncheckedUpdateWithoutMatchInput> update;

  final _i1.PrismaUnion<_i2.PlayedCreateWithoutMatchInput,
      _i2.PlayedUncheckedCreateWithoutMatchInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlayedUpdateWithWhereUniqueWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateWithWhereUniqueWithoutMatchInput({
    required this.where,
    required this.data,
  });

  final _i2.PlayedWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithoutMatchInput,
      _i2.PlayedUncheckedUpdateWithoutMatchInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlayedScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<_i2.PlayedScalarWhereInput,
      Iterable<_i2.PlayedScalarWhereInput>>? AND;

  final Iterable<_i2.PlayedScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.PlayedScalarWhereInput,
      Iterable<_i2.PlayedScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? matchId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? playerId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? jerseyNumber;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? entryTime;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? leaveTime;

  final _i1.PrismaUnion<_i2.IntFilter, int>? goals;

  final _i1.PrismaUnion<_i2.IntFilter, int>? blocked;

  final _i1.PrismaUnion<_i2.IntFilter, int>? onTarget;

  final _i1.PrismaUnion<_i2.IntFilter, int>? offTarget;

  final _i1.PrismaUnion<_i2.IntFilter, int>? assists;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? yellow;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? red;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateManyMutationInput({
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUncheckedUpdateManyWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateManyWithoutPlayedInput({
    this.id,
    this.matchId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? matchId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUpdateManyWithWhereWithoutMatchInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateManyWithWhereWithoutMatchInput({
    required this.where,
    required this.data,
  });

  final _i2.PlayedScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlayedUpdateManyMutationInput,
      _i2.PlayedUncheckedUpdateManyWithoutPlayedInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlayedUpdateManyWithoutMatchNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateManyWithoutMatchNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutMatchInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutMatchInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutMatchInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutMatchInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutMatchInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutMatchInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlayedUpsertWithWhereUniqueWithoutMatchInput,
      Iterable<_i2.PlayedUpsertWithWhereUniqueWithoutMatchInput>>? upsert;

  final _i2.PlayedCreateManyMatchInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithWhereUniqueWithoutMatchInput,
      Iterable<_i2.PlayedUpdateWithWhereUniqueWithoutMatchInput>>? update;

  final _i1.PrismaUnion<_i2.PlayedUpdateManyWithWhereWithoutMatchInput,
      Iterable<_i2.PlayedUpdateManyWithWhereWithoutMatchInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlayedScalarWhereInput,
      Iterable<_i2.PlayedScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class MatchUpdateWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateWithoutTeamInput({
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.opponent,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.OpponentUpdateOneRequiredWithoutMatchesNestedInput? opponent;

  final _i2.PlayedUpdateManyWithoutMatchNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'opponent': opponent,
        'played': played,
      };
}

class PlayedUncheckedUpdateManyWithoutMatchNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateManyWithoutMatchNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutMatchInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutMatchInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutMatchInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutMatchInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutMatchInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutMatchInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlayedUpsertWithWhereUniqueWithoutMatchInput,
      Iterable<_i2.PlayedUpsertWithWhereUniqueWithoutMatchInput>>? upsert;

  final _i2.PlayedCreateManyMatchInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithWhereUniqueWithoutMatchInput,
      Iterable<_i2.PlayedUpdateWithWhereUniqueWithoutMatchInput>>? update;

  final _i1.PrismaUnion<_i2.PlayedUpdateManyWithWhereWithoutMatchInput,
      Iterable<_i2.PlayedUpdateManyWithWhereWithoutMatchInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlayedScalarWhereInput,
      Iterable<_i2.PlayedScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class MatchUncheckedUpdateWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateWithoutTeamInput({
    this.id,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.PlayedUncheckedUpdateManyWithoutMatchNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'played': played,
      };
}

class MatchUpsertWithWhereUniqueWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpsertWithWhereUniqueWithoutTeamInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchUpdateWithoutTeamInput,
      _i2.MatchUncheckedUpdateWithoutTeamInput> update;

  final _i1.PrismaUnion<_i2.MatchCreateWithoutTeamInput,
      _i2.MatchUncheckedCreateWithoutTeamInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class MatchUpdateWithWhereUniqueWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateWithWhereUniqueWithoutTeamInput({
    required this.where,
    required this.data,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchUpdateWithoutTeamInput,
      _i2.MatchUncheckedUpdateWithoutTeamInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MatchScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i1.PrismaUnion<_i2.MatchScalarWhereInput,
      Iterable<_i2.MatchScalarWhereInput>>? AND;

  final Iterable<_i2.MatchScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MatchScalarWhereInput,
      Iterable<_i2.MatchScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      teamId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? opponentId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? teamScore;

  final _i1.PrismaUnion<_i2.IntFilter, int>? opponentScore;

  final _i1.PrismaUnion<_i2.StringFilter, String>? address;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? isHome;

  final _i1.PrismaUnion<_i2.StringFilter, String>? coach;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateManyMutationInput({
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchUncheckedUpdateManyWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateManyWithoutMatchesInput({
    this.id,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchUpdateManyWithWhereWithoutTeamInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateManyWithWhereWithoutTeamInput({
    required this.where,
    required this.data,
  });

  final _i2.MatchScalarWhereInput where;

  final _i1.PrismaUnion<_i2.MatchUpdateManyMutationInput,
      _i2.MatchUncheckedUpdateManyWithoutMatchesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MatchUpdateManyWithoutTeamNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateManyWithoutTeamNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutTeamInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutTeamInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutTeamInput,
              Iterable<_i2.MatchUncheckedCreateWithoutTeamInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutTeamInput,
      Iterable<_i2.MatchCreateOrConnectWithoutTeamInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MatchUpsertWithWhereUniqueWithoutTeamInput,
      Iterable<_i2.MatchUpsertWithWhereUniqueWithoutTeamInput>>? upsert;

  final _i2.MatchCreateManyTeamInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MatchUpdateWithWhereUniqueWithoutTeamInput,
      Iterable<_i2.MatchUpdateWithWhereUniqueWithoutTeamInput>>? update;

  final _i1.PrismaUnion<_i2.MatchUpdateManyWithWhereWithoutTeamInput,
      Iterable<_i2.MatchUpdateManyWithWhereWithoutTeamInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MatchScalarWhereInput,
      Iterable<_i2.MatchScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TeamUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUpdateInput({
    this.name,
    this.fffId,
    this.matches,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  final _i2.MatchUpdateManyWithoutTeamNestedInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class MatchUncheckedUpdateManyWithoutTeamNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateManyWithoutTeamNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutTeamInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutTeamInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutTeamInput,
              Iterable<_i2.MatchUncheckedCreateWithoutTeamInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutTeamInput,
      Iterable<_i2.MatchCreateOrConnectWithoutTeamInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MatchUpsertWithWhereUniqueWithoutTeamInput,
      Iterable<_i2.MatchUpsertWithWhereUniqueWithoutTeamInput>>? upsert;

  final _i2.MatchCreateManyTeamInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MatchUpdateWithWhereUniqueWithoutTeamInput,
      Iterable<_i2.MatchUpdateWithWhereUniqueWithoutTeamInput>>? update;

  final _i1.PrismaUnion<_i2.MatchUpdateManyWithWhereWithoutTeamInput,
      Iterable<_i2.MatchUpdateManyWithWhereWithoutTeamInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MatchScalarWhereInput,
      Iterable<_i2.MatchScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class TeamUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUncheckedUpdateInput({
    this.id,
    this.name,
    this.fffId,
    this.matches,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  final _i2.MatchUncheckedUpdateManyWithoutTeamNestedInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class TeamUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUpdateManyMutationInput({
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
      };
}

class TeamUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamCountAggregateOutputType {
  const TeamCountAggregateOutputType({
    this.id,
    this.name,
    this.fffId,
    this.$all,
  });

  factory TeamCountAggregateOutputType.fromJson(Map json) =>
      TeamCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? fffId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_all': $all,
      };
}

class TeamAvgAggregateOutputType {
  const TeamAvgAggregateOutputType({
    this.id,
    this.fffId,
  });

  factory TeamAvgAggregateOutputType.fromJson(Map json) =>
      TeamAvgAggregateOutputType(
        id: json['id'],
        fffId: json['fffId'],
      );

  final double? id;

  final double? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class TeamSumAggregateOutputType {
  const TeamSumAggregateOutputType({
    this.id,
    this.fffId,
  });

  factory TeamSumAggregateOutputType.fromJson(Map json) =>
      TeamSumAggregateOutputType(
        id: json['id'],
        fffId: json['fffId'],
      );

  final int? id;

  final int? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class TeamMinAggregateOutputType {
  const TeamMinAggregateOutputType({
    this.id,
    this.name,
    this.fffId,
  });

  factory TeamMinAggregateOutputType.fromJson(Map json) =>
      TeamMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
      );

  final int? id;

  final String? name;

  final int? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamMaxAggregateOutputType {
  const TeamMaxAggregateOutputType({
    this.id,
    this.name,
    this.fffId,
  });

  factory TeamMaxAggregateOutputType.fromJson(Map json) =>
      TeamMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
      );

  final int? id;

  final String? name;

  final int? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamGroupByOutputType {
  const TeamGroupByOutputType({
    this.id,
    this.name,
    this.fffId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory TeamGroupByOutputType.fromJson(Map json) => TeamGroupByOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
        $count: json['_count'] is Map
            ? _i2.TeamCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TeamAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TeamSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TeamMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TeamMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? name;

  final int? fffId;

  final _i2.TeamCountAggregateOutputType? $count;

  final _i2.TeamAvgAggregateOutputType? $avg;

  final _i2.TeamSumAggregateOutputType? $sum;

  final _i2.TeamMinAggregateOutputType? $min;

  final _i2.TeamMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TeamCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCountOrderByAggregateInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamAvgOrderByAggregateInput({
    this.id,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class TeamMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamMinOrderByAggregateInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamSumOrderByAggregateInput({
    this.id,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class TeamOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamOrderByWithAggregationInput({
    this.id,
    this.name,
    this.fffId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  final _i2.TeamCountOrderByAggregateInput? $count;

  final _i2.TeamAvgOrderByAggregateInput? $avg;

  final _i2.TeamMaxOrderByAggregateInput? $max;

  final _i2.TeamMinOrderByAggregateInput? $min;

  final _i2.TeamSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class TeamScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<_i2.TeamScalarWhereWithAggregatesInput,
      Iterable<_i2.TeamScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TeamScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TeamScalarWhereWithAggregatesInput,
      Iterable<_i2.TeamScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_all': $all,
      };
}

class TeamGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamGroupByOutputTypeCountArgs({this.select});

  final _i2.TeamCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TeamAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamAvgAggregateOutputTypeSelect({
    this.id,
    this.fffId,
  });

  final bool? id;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class TeamGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamGroupByOutputTypeAvgArgs({this.select});

  final _i2.TeamAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TeamSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamSumAggregateOutputTypeSelect({
    this.id,
    this.fffId,
  });

  final bool? id;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class TeamGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamGroupByOutputTypeSumArgs({this.select});

  final _i2.TeamSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TeamMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamGroupByOutputTypeMinArgs({this.select});

  final _i2.TeamMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TeamMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamGroupByOutputTypeMaxArgs({this.select});

  final _i2.TeamMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TeamGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  final _i1.PrismaUnion<bool, _i2.TeamGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TeamGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.TeamGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.TeamGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TeamGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTeam {
  const AggregateTeam({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateTeam.fromJson(Map json) => AggregateTeam(
        $count: json['_count'] is Map
            ? _i2.TeamCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.TeamAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.TeamSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TeamMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TeamMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TeamCountAggregateOutputType? $count;

  final _i2.TeamAvgAggregateOutputType? $avg;

  final _i2.TeamSumAggregateOutputType? $sum;

  final _i2.TeamMinAggregateOutputType? $min;

  final _i2.TeamMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTeamCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTeamCountArgs({this.select});

  final _i2.TeamCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTeamAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTeamAvgArgs({this.select});

  final _i2.TeamAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTeamSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTeamSumArgs({this.select});

  final _i2.TeamSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTeamMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTeamMinArgs({this.select});

  final _i2.TeamMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTeamMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTeamMaxArgs({this.select});

  final _i2.TeamMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTeamSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTeamSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTeamCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTeamAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateTeamSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateTeamMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTeamMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum PlayerScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'player'),
  firstName<String>('first_name', 'player'),
  lastName<String>('last_name', 'player');

  const PlayerScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TeamCreateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCreateWithoutMatchesInput({
    required this.name,
    required this.fffId,
  });

  final String name;

  final int fffId;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
      };
}

class TeamUncheckedCreateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUncheckedCreateWithoutMatchesInput({
    this.id,
    required this.name,
    required this.fffId,
  });

  final int? id;

  final String name;

  final int fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamCreateOrConnectWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCreateOrConnectWithoutMatchesInput({
    required this.where,
    required this.create,
  });

  final _i2.TeamWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TeamCreateWithoutMatchesInput,
      _i2.TeamUncheckedCreateWithoutMatchesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TeamCreateNestedOneWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamCreateNestedOneWithoutMatchesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TeamCreateWithoutMatchesInput,
      _i2.TeamUncheckedCreateWithoutMatchesInput>? create;

  final _i2.TeamCreateOrConnectWithoutMatchesInput? connectOrCreate;

  final _i2.TeamWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class MatchCreateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateWithoutPlayedInput({
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    this.team,
    required this.opponent,
  });

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.TeamCreateNestedOneWithoutMatchesInput? team;

  final _i2.OpponentCreateNestedOneWithoutMatchesInput opponent;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
      };
}

class MatchUncheckedCreateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedCreateWithoutPlayedInput({
    this.id,
    this.teamId,
    required this.opponentId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? teamId;

  final int opponentId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchCreateOrConnectWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateOrConnectWithoutPlayedInput({
    required this.where,
    required this.create,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchCreateWithoutPlayedInput,
      _i2.MatchUncheckedCreateWithoutPlayedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class MatchCreateNestedOneWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateNestedOneWithoutPlayedInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.MatchCreateWithoutPlayedInput,
      _i2.MatchUncheckedCreateWithoutPlayedInput>? create;

  final _i2.MatchCreateOrConnectWithoutPlayedInput? connectOrCreate;

  final _i2.MatchWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class PlayedCreateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateWithoutPlayerInput({
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
    required this.match,
  });

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  final _i2.MatchCreateNestedOneWithoutPlayedInput match;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
      };
}

class PlayedUncheckedCreateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedCreateWithoutPlayerInput({
    this.id,
    required this.matchId,
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
  });

  final int? id;

  final int matchId;

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCreateOrConnectWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateOrConnectWithoutPlayerInput({
    required this.where,
    required this.create,
  });

  final _i2.PlayedWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayedCreateWithoutPlayerInput,
      _i2.PlayedUncheckedCreateWithoutPlayerInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlayedCreateManyPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateManyPlayerInput({
    this.id,
    required this.matchId,
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
  });

  final int? id;

  final int matchId;

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCreateManyPlayerInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateManyPlayerInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.PlayedCreateManyPlayerInput,
      Iterable<_i2.PlayedCreateManyPlayerInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class PlayedCreateNestedManyWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateNestedManyWithoutPlayerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i2.PlayedCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlayerCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateInput({
    required this.firstName,
    required this.lastName,
    this.played,
    this.canPlay,
  });

  final String firstName;

  final String lastName;

  final _i2.PlayedCreateNestedManyWithoutPlayerInput? played;

  final _i2.CanPlayCreateNestedManyWithoutPlayerInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
      };
}

class PlayedUncheckedCreateNestedManyWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedCreateNestedManyWithoutPlayerInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i2.PlayedCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class PlayerUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedCreateInput({
    this.id,
    required this.firstName,
    required this.lastName,
    this.played,
    this.canPlay,
  });

  final int? id;

  final String firstName;

  final String lastName;

  final _i2.PlayedUncheckedCreateNestedManyWithoutPlayerInput? played;

  final _i2.CanPlayUncheckedCreateNestedManyWithoutPlayerInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
      };
}

class PlayerCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateManyInput({
    this.id,
    required this.firstName,
    required this.lastName,
  });

  final int? id;

  final String firstName;

  final String lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class TeamUpdateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUpdateWithoutMatchesInput({
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
      };
}

class TeamUncheckedUpdateWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUncheckedUpdateWithoutMatchesInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class TeamUpsertWithoutMatchesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUpsertWithoutMatchesInput({
    required this.update,
    required this.create,
  });

  final _i1.PrismaUnion<_i2.TeamUpdateWithoutMatchesInput,
      _i2.TeamUncheckedUpdateWithoutMatchesInput> update;

  final _i1.PrismaUnion<_i2.TeamCreateWithoutMatchesInput,
      _i2.TeamUncheckedCreateWithoutMatchesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
      };
}

class TeamUpdateOneWithoutMatchesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TeamUpdateOneWithoutMatchesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TeamCreateWithoutMatchesInput,
      _i2.TeamUncheckedCreateWithoutMatchesInput>? create;

  final _i2.TeamCreateOrConnectWithoutMatchesInput? connectOrCreate;

  final _i2.TeamUpsertWithoutMatchesInput? upsert;

  final bool? disconnect;

  final bool? delete;

  final _i2.TeamWhereUniqueInput? connect;

  final _i1.PrismaUnion<_i2.TeamUpdateWithoutMatchesInput,
      _i2.TeamUncheckedUpdateWithoutMatchesInput>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class MatchUpdateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateWithoutPlayedInput({
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.team,
    this.opponent,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.TeamUpdateOneWithoutMatchesNestedInput? team;

  final _i2.OpponentUpdateOneRequiredWithoutMatchesNestedInput? opponent;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
      };
}

class NullableIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class MatchUncheckedUpdateWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateWithoutPlayedInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? teamId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchUpsertWithoutPlayedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpsertWithoutPlayedInput({
    required this.update,
    required this.create,
  });

  final _i1.PrismaUnion<_i2.MatchUpdateWithoutPlayedInput,
      _i2.MatchUncheckedUpdateWithoutPlayedInput> update;

  final _i1.PrismaUnion<_i2.MatchCreateWithoutPlayedInput,
      _i2.MatchUncheckedCreateWithoutPlayedInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
      };
}

class MatchUpdateOneRequiredWithoutPlayedNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateOneRequiredWithoutPlayedNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.MatchCreateWithoutPlayedInput,
      _i2.MatchUncheckedCreateWithoutPlayedInput>? create;

  final _i2.MatchCreateOrConnectWithoutPlayedInput? connectOrCreate;

  final _i2.MatchUpsertWithoutPlayedInput? upsert;

  final _i2.MatchWhereUniqueInput? connect;

  final _i1.PrismaUnion<_i2.MatchUpdateWithoutPlayedInput,
      _i2.MatchUncheckedUpdateWithoutPlayedInput>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class PlayedUpdateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateWithoutPlayerInput({
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.match,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  final _i2.MatchUpdateOneRequiredWithoutPlayedNestedInput? match;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
      };
}

class PlayedUncheckedUpdateWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateWithoutPlayerInput({
    this.id,
    this.matchId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? matchId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUpsertWithWhereUniqueWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpsertWithWhereUniqueWithoutPlayerInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.PlayedWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithoutPlayerInput,
      _i2.PlayedUncheckedUpdateWithoutPlayerInput> update;

  final _i1.PrismaUnion<_i2.PlayedCreateWithoutPlayerInput,
      _i2.PlayedUncheckedCreateWithoutPlayerInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class PlayedUpdateWithWhereUniqueWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateWithWhereUniqueWithoutPlayerInput({
    required this.where,
    required this.data,
  });

  final _i2.PlayedWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithoutPlayerInput,
      _i2.PlayedUncheckedUpdateWithoutPlayerInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlayedUpdateManyWithWhereWithoutPlayerInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateManyWithWhereWithoutPlayerInput({
    required this.where,
    required this.data,
  });

  final _i2.PlayedScalarWhereInput where;

  final _i1.PrismaUnion<_i2.PlayedUpdateManyMutationInput,
      _i2.PlayedUncheckedUpdateManyWithoutPlayedInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class PlayedUpdateManyWithoutPlayerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateManyWithoutPlayerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlayedUpsertWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.PlayedUpsertWithWhereUniqueWithoutPlayerInput>>? upsert;

  final _i2.PlayedCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.PlayedUpdateWithWhereUniqueWithoutPlayerInput>>? update;

  final _i1.PrismaUnion<_i2.PlayedUpdateManyWithWhereWithoutPlayerInput,
      Iterable<_i2.PlayedUpdateManyWithWhereWithoutPlayerInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlayedScalarWhereInput,
      Iterable<_i2.PlayedScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PlayerUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpdateInput({
    this.firstName,
    this.lastName,
    this.played,
    this.canPlay,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i2.PlayedUpdateManyWithoutPlayerNestedInput? played;

  final _i2.CanPlayUpdateManyWithoutPlayerNestedInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
      };
}

class PlayedUncheckedUpdateManyWithoutPlayerNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateManyWithoutPlayerNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.PlayedCreateWithoutPlayerInput,
      _i1.PrismaUnion<
          Iterable<_i2.PlayedCreateWithoutPlayerInput>,
          _i1.PrismaUnion<_i2.PlayedUncheckedCreateWithoutPlayerInput,
              Iterable<_i2.PlayedUncheckedCreateWithoutPlayerInput>>>>? create;

  final _i1.PrismaUnion<_i2.PlayedCreateOrConnectWithoutPlayerInput,
      Iterable<_i2.PlayedCreateOrConnectWithoutPlayerInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.PlayedUpsertWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.PlayedUpsertWithWhereUniqueWithoutPlayerInput>>? upsert;

  final _i2.PlayedCreateManyPlayerInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.PlayedWhereUniqueInput,
      Iterable<_i2.PlayedWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.PlayedUpdateWithWhereUniqueWithoutPlayerInput,
      Iterable<_i2.PlayedUpdateWithWhereUniqueWithoutPlayerInput>>? update;

  final _i1.PrismaUnion<_i2.PlayedUpdateManyWithWhereWithoutPlayerInput,
      Iterable<_i2.PlayedUpdateManyWithWhereWithoutPlayerInput>>? updateMany;

  final _i1.PrismaUnion<_i2.PlayedScalarWhereInput,
      Iterable<_i2.PlayedScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class PlayerUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedUpdateInput({
    this.id,
    this.firstName,
    this.lastName,
    this.played,
    this.canPlay,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i2.PlayedUncheckedUpdateManyWithoutPlayerNestedInput? played;

  final _i2.CanPlayUncheckedUpdateManyWithoutPlayerNestedInput? canPlay;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
        'can_play': canPlay,
      };
}

class PlayerUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpdateManyMutationInput({
    this.firstName,
    this.lastName,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedUpdateManyInput({
    this.id,
    this.firstName,
    this.lastName,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerCountAggregateOutputType {
  const PlayerCountAggregateOutputType({
    this.id,
    this.firstName,
    this.lastName,
    this.$all,
  });

  factory PlayerCountAggregateOutputType.fromJson(Map json) =>
      PlayerCountAggregateOutputType(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        $all: json['_all'],
      );

  final int? id;

  final int? firstName;

  final int? lastName;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        '_all': $all,
      };
}

class PlayerAvgAggregateOutputType {
  const PlayerAvgAggregateOutputType({this.id});

  factory PlayerAvgAggregateOutputType.fromJson(Map json) =>
      PlayerAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerSumAggregateOutputType {
  const PlayerSumAggregateOutputType({this.id});

  factory PlayerSumAggregateOutputType.fromJson(Map json) =>
      PlayerSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerMinAggregateOutputType {
  const PlayerMinAggregateOutputType({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory PlayerMinAggregateOutputType.fromJson(Map json) =>
      PlayerMinAggregateOutputType(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
      );

  final int? id;

  final String? firstName;

  final String? lastName;

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerMaxAggregateOutputType {
  const PlayerMaxAggregateOutputType({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory PlayerMaxAggregateOutputType.fromJson(Map json) =>
      PlayerMaxAggregateOutputType(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
      );

  final int? id;

  final String? firstName;

  final String? lastName;

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerGroupByOutputType {
  const PlayerGroupByOutputType({
    this.id,
    this.firstName,
    this.lastName,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PlayerGroupByOutputType.fromJson(Map json) => PlayerGroupByOutputType(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        $count: json['_count'] is Map
            ? _i2.PlayerCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlayerAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlayerSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlayerMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlayerMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? firstName;

  final String? lastName;

  final _i2.PlayerCountAggregateOutputType? $count;

  final _i2.PlayerAvgAggregateOutputType? $avg;

  final _i2.PlayerSumAggregateOutputType? $sum;

  final _i2.PlayerMinAggregateOutputType? $min;

  final _i2.PlayerMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PlayerCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCountOrderByAggregateInput({
    this.id,
    this.firstName,
    this.lastName,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerMaxOrderByAggregateInput({
    this.id,
    this.firstName,
    this.lastName,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerMinOrderByAggregateInput({
    this.id,
    this.firstName,
    this.lastName,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerOrderByWithAggregationInput({
    this.id,
    this.firstName,
    this.lastName,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.PlayerCountOrderByAggregateInput? $count;

  final _i2.PlayerAvgOrderByAggregateInput? $avg;

  final _i2.PlayerMaxOrderByAggregateInput? $max;

  final _i2.PlayerMinOrderByAggregateInput? $min;

  final _i2.PlayerSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class PlayerScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.firstName,
    this.lastName,
  });

  final _i1.PrismaUnion<_i2.PlayerScalarWhereWithAggregatesInput,
      Iterable<_i2.PlayerScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PlayerScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PlayerScalarWhereWithAggregatesInput,
      Iterable<_i2.PlayerScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCountAggregateOutputTypeSelect({
    this.id,
    this.firstName,
    this.lastName,
    this.$all,
  });

  final bool? id;

  final bool? firstName;

  final bool? lastName;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        '_all': $all,
      };
}

class PlayerGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerGroupByOutputTypeCountArgs({this.select});

  final _i2.PlayerCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayerAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerGroupByOutputTypeAvgArgs({this.select});

  final _i2.PlayerAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayerSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class PlayerGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerGroupByOutputTypeSumArgs({this.select});

  final _i2.PlayerSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayerMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerMinAggregateOutputTypeSelect({
    this.id,
    this.firstName,
    this.lastName,
  });

  final bool? id;

  final bool? firstName;

  final bool? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerGroupByOutputTypeMinArgs({this.select});

  final _i2.PlayerMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayerMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerMaxAggregateOutputTypeSelect({
    this.id,
    this.firstName,
    this.lastName,
  });

  final bool? id;

  final bool? firstName;

  final bool? lastName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
      };
}

class PlayerGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerGroupByOutputTypeMaxArgs({this.select});

  final _i2.PlayerMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayerGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerGroupByOutputTypeSelect({
    this.id,
    this.firstName,
    this.lastName,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? firstName;

  final bool? lastName;

  final _i1.PrismaUnion<bool, _i2.PlayerGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PlayerGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PlayerGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PlayerGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PlayerGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePlayer {
  const AggregatePlayer({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePlayer.fromJson(Map json) => AggregatePlayer(
        $count: json['_count'] is Map
            ? _i2.PlayerCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlayerAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlayerSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlayerMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlayerMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PlayerCountAggregateOutputType? $count;

  final _i2.PlayerAvgAggregateOutputType? $avg;

  final _i2.PlayerSumAggregateOutputType? $sum;

  final _i2.PlayerMinAggregateOutputType? $min;

  final _i2.PlayerMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePlayerCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayerCountArgs({this.select});

  final _i2.PlayerCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayerAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayerAvgArgs({this.select});

  final _i2.PlayerAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayerSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayerSumArgs({this.select});

  final _i2.PlayerSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayerMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayerMinArgs({this.select});

  final _i2.PlayerMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayerMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayerMaxArgs({this.select});

  final _i2.PlayerMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayerSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayerSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePlayerCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayerAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayerSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayerMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayerMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class MatchCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateInput({
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    this.team,
    required this.opponent,
    this.played,
  });

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.TeamCreateNestedOneWithoutMatchesInput? team;

  final _i2.OpponentCreateNestedOneWithoutMatchesInput opponent;

  final _i2.PlayedCreateNestedManyWithoutMatchInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
        'played': played,
      };
}

class MatchUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedCreateInput({
    this.id,
    this.teamId,
    required this.opponentId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    this.played,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? teamId;

  final int opponentId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.PlayedUncheckedCreateNestedManyWithoutMatchInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'played': played,
      };
}

class MatchCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateManyInput({
    this.id,
    this.teamId,
    required this.opponentId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? teamId;

  final int opponentId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateInput({
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.team,
    this.opponent,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.TeamUpdateOneWithoutMatchesNestedInput? team;

  final _i2.OpponentUpdateOneRequiredWithoutMatchesNestedInput? opponent;

  final _i2.PlayedUpdateManyWithoutMatchNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'opponent': opponent,
        'played': played,
      };
}

class MatchUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? teamId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.PlayedUncheckedUpdateManyWithoutMatchNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'played': played,
      };
}

class MatchUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateManyInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? teamId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchCountAggregateOutputType {
  const MatchCountAggregateOutputType({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.$all,
  });

  factory MatchCountAggregateOutputType.fromJson(Map json) =>
      MatchCountAggregateOutputType(
        id: json['id'],
        teamId: json['teamId'],
        opponentId: json['opponentId'],
        teamScore: json['teamScore'],
        opponentScore: json['opponentScore'],
        address: json['address'],
        date: json['date'],
        isHome: json['isHome'],
        coach: json['coach'],
        $all: json['_all'],
      );

  final int? id;

  final int? teamId;

  final int? opponentId;

  final int? teamScore;

  final int? opponentScore;

  final int? address;

  final int? date;

  final int? isHome;

  final int? coach;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        '_all': $all,
      };
}

class MatchAvgAggregateOutputType {
  const MatchAvgAggregateOutputType({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
  });

  factory MatchAvgAggregateOutputType.fromJson(Map json) =>
      MatchAvgAggregateOutputType(
        id: json['id'],
        teamId: json['teamId'],
        opponentId: json['opponentId'],
        teamScore: json['teamScore'],
        opponentScore: json['opponentScore'],
      );

  final double? id;

  final double? teamId;

  final double? opponentId;

  final double? teamScore;

  final double? opponentScore;

  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
      };
}

class MatchSumAggregateOutputType {
  const MatchSumAggregateOutputType({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
  });

  factory MatchSumAggregateOutputType.fromJson(Map json) =>
      MatchSumAggregateOutputType(
        id: json['id'],
        teamId: json['teamId'],
        opponentId: json['opponentId'],
        teamScore: json['teamScore'],
        opponentScore: json['opponentScore'],
      );

  final int? id;

  final int? teamId;

  final int? opponentId;

  final int? teamScore;

  final int? opponentScore;

  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
      };
}

class MatchMinAggregateOutputType {
  const MatchMinAggregateOutputType({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  factory MatchMinAggregateOutputType.fromJson(Map json) =>
      MatchMinAggregateOutputType(
        id: json['id'],
        teamId: json['teamId'],
        opponentId: json['opponentId'],
        teamScore: json['teamScore'],
        opponentScore: json['opponentScore'],
        address: json['address'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date']
        },
        isHome: json['isHome'],
        coach: json['coach'],
      );

  final int? id;

  final int? teamId;

  final int? opponentId;

  final int? teamScore;

  final int? opponentScore;

  final String? address;

  final DateTime? date;

  final bool? isHome;

  final String? coach;

  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date?.toIso8601String(),
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchMaxAggregateOutputType {
  const MatchMaxAggregateOutputType({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  factory MatchMaxAggregateOutputType.fromJson(Map json) =>
      MatchMaxAggregateOutputType(
        id: json['id'],
        teamId: json['teamId'],
        opponentId: json['opponentId'],
        teamScore: json['teamScore'],
        opponentScore: json['opponentScore'],
        address: json['address'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date']
        },
        isHome: json['isHome'],
        coach: json['coach'],
      );

  final int? id;

  final int? teamId;

  final int? opponentId;

  final int? teamScore;

  final int? opponentScore;

  final String? address;

  final DateTime? date;

  final bool? isHome;

  final String? coach;

  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date?.toIso8601String(),
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchGroupByOutputType {
  const MatchGroupByOutputType({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory MatchGroupByOutputType.fromJson(Map json) => MatchGroupByOutputType(
        id: json['id'],
        teamId: json['teamId'],
        opponentId: json['opponentId'],
        teamScore: json['teamScore'],
        opponentScore: json['opponentScore'],
        address: json['address'],
        date: switch (json['date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['date']
        },
        isHome: json['isHome'],
        coach: json['coach'],
        $count: json['_count'] is Map
            ? _i2.MatchCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.MatchAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.MatchSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MatchMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MatchMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? teamId;

  final int? opponentId;

  final int? teamScore;

  final int? opponentScore;

  final String? address;

  final DateTime? date;

  final bool? isHome;

  final String? coach;

  final _i2.MatchCountAggregateOutputType? $count;

  final _i2.MatchAvgAggregateOutputType? $avg;

  final _i2.MatchSumAggregateOutputType? $sum;

  final _i2.MatchMinAggregateOutputType? $min;

  final _i2.MatchMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date?.toIso8601String(),
        'isHome': isHome,
        'coach': coach,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class MatchCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCountOrderByAggregateInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  final _i2.SortOrder? address;

  final _i2.SortOrder? date;

  final _i2.SortOrder? isHome;

  final _i2.SortOrder? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchAvgOrderByAggregateInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
      };
}

class MatchMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchMaxOrderByAggregateInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  final _i2.SortOrder? address;

  final _i2.SortOrder? date;

  final _i2.SortOrder? isHome;

  final _i2.SortOrder? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchMinOrderByAggregateInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  final _i2.SortOrder? address;

  final _i2.SortOrder? date;

  final _i2.SortOrder? isHome;

  final _i2.SortOrder? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchSumOrderByAggregateInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
      };
}

class MatchOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchOrderByWithAggregationInput({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? teamId;

  final _i2.SortOrder? opponentId;

  final _i2.SortOrder? teamScore;

  final _i2.SortOrder? opponentScore;

  final _i2.SortOrder? address;

  final _i2.SortOrder? date;

  final _i2.SortOrder? isHome;

  final _i2.SortOrder? coach;

  final _i2.MatchCountOrderByAggregateInput? $count;

  final _i2.MatchAvgOrderByAggregateInput? $avg;

  final _i2.MatchMaxOrderByAggregateInput? $max;

  final _i2.MatchMinOrderByAggregateInput? $min;

  final _i2.MatchSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.PrismaNull>? equals;

  final _i1
      .PrismaUnion<Iterable<double>, _i1.PrismaUnion<double, _i1.PrismaNull>>?
      $in;

  final _i1
      .PrismaUnion<Iterable<double>, _i1.PrismaUnion<double, _i1.PrismaNull>>?
      notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final DateTime? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class MatchScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final _i1.PrismaUnion<_i2.MatchScalarWhereWithAggregatesInput,
      Iterable<_i2.MatchScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.MatchScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.MatchScalarWhereWithAggregatesInput,
      Iterable<_i2.MatchScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? teamId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? opponentId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? teamScore;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? opponentScore;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? address;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? date;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? isHome;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? coach;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCountAggregateOutputTypeSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.$all,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  final bool? address;

  final bool? date;

  final bool? isHome;

  final bool? coach;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        '_all': $all,
      };
}

class MatchGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchGroupByOutputTypeCountArgs({this.select});

  final _i2.MatchCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MatchAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchAvgAggregateOutputTypeSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
      };
}

class MatchGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchGroupByOutputTypeAvgArgs({this.select});

  final _i2.MatchAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MatchSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchSumAggregateOutputTypeSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
      };
}

class MatchGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchGroupByOutputTypeSumArgs({this.select});

  final _i2.MatchSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MatchMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchMinAggregateOutputTypeSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  final bool? address;

  final bool? date;

  final bool? isHome;

  final bool? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchGroupByOutputTypeMinArgs({this.select});

  final _i2.MatchMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MatchMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchMaxAggregateOutputTypeSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  final bool? address;

  final bool? date;

  final bool? isHome;

  final bool? coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchGroupByOutputTypeMaxArgs({this.select});

  final _i2.MatchMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MatchGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchGroupByOutputTypeSelect({
    this.id,
    this.teamId,
    this.opponentId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? teamId;

  final bool? opponentId;

  final bool? teamScore;

  final bool? opponentScore;

  final bool? address;

  final bool? date;

  final bool? isHome;

  final bool? coach;

  final _i1.PrismaUnion<bool, _i2.MatchGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.MatchGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.MatchGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.MatchGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.MatchGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'opponentId': opponentId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateMatch {
  const AggregateMatch({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateMatch.fromJson(Map json) => AggregateMatch(
        $count: json['_count'] is Map
            ? _i2.MatchCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.MatchAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.MatchSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MatchMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MatchMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.MatchCountAggregateOutputType? $count;

  final _i2.MatchAvgAggregateOutputType? $avg;

  final _i2.MatchSumAggregateOutputType? $sum;

  final _i2.MatchMinAggregateOutputType? $min;

  final _i2.MatchMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateMatchCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMatchCountArgs({this.select});

  final _i2.MatchCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMatchAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMatchAvgArgs({this.select});

  final _i2.MatchAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMatchSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMatchSumArgs({this.select});

  final _i2.MatchSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMatchMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMatchMinArgs({this.select});

  final _i2.MatchMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMatchMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMatchMaxArgs({this.select});

  final _i2.MatchMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMatchSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMatchSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateMatchCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateMatchAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateMatchSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateMatchMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateMatchMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PlayedCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateInput({
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
    required this.match,
    required this.player,
  });

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  final _i2.MatchCreateNestedOneWithoutPlayedInput match;

  final _i2.PlayerCreateNestedOneWithoutPlayedInput player;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
        'player': player,
      };
}

class PlayedUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedCreateInput({
    this.id,
    required this.matchId,
    required this.playerId,
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
  });

  final int? id;

  final int matchId;

  final int playerId;

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCreateManyInput({
    this.id,
    required this.matchId,
    required this.playerId,
    required this.jerseyNumber,
    required this.entryTime,
    required this.leaveTime,
    required this.goals,
    required this.blocked,
    required this.onTarget,
    required this.offTarget,
    required this.assists,
    required this.yellow,
    required this.red,
  });

  final int? id;

  final int matchId;

  final int playerId;

  final int jerseyNumber;

  final DateTime entryTime;

  final DateTime leaveTime;

  final int goals;

  final int blocked;

  final int onTarget;

  final int offTarget;

  final int assists;

  final bool yellow;

  final bool red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUpdateInput({
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.match,
    this.player,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  final _i2.MatchUpdateOneRequiredWithoutPlayedNestedInput? match;

  final _i2.PlayerUpdateOneRequiredWithoutPlayedNestedInput? player;

  @override
  Map<String, dynamic> toJson() => {
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        'match': match,
        'player': player,
      };
}

class PlayedUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? matchId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? playerId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedUncheckedUpdateManyInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? matchId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? playerId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? jerseyNumber;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      entryTime;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      leaveTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? goals;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? blocked;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? onTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? offTarget;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? assists;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? yellow;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCountAggregateOutputType {
  const PlayedCountAggregateOutputType({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.$all,
  });

  factory PlayedCountAggregateOutputType.fromJson(Map json) =>
      PlayedCountAggregateOutputType(
        id: json['id'],
        matchId: json['matchId'],
        playerId: json['playerId'],
        jerseyNumber: json['jerseyNumber'],
        entryTime: json['entryTime'],
        leaveTime: json['leaveTime'],
        goals: json['goals'],
        blocked: json['blocked'],
        onTarget: json['onTarget'],
        offTarget: json['offTarget'],
        assists: json['assists'],
        yellow: json['yellow'],
        red: json['red'],
        $all: json['_all'],
      );

  final int? id;

  final int? matchId;

  final int? playerId;

  final int? jerseyNumber;

  final int? entryTime;

  final int? leaveTime;

  final int? goals;

  final int? blocked;

  final int? onTarget;

  final int? offTarget;

  final int? assists;

  final int? yellow;

  final int? red;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        '_all': $all,
      };
}

class PlayedAvgAggregateOutputType {
  const PlayedAvgAggregateOutputType({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
  });

  factory PlayedAvgAggregateOutputType.fromJson(Map json) =>
      PlayedAvgAggregateOutputType(
        id: json['id'],
        matchId: json['matchId'],
        playerId: json['playerId'],
        jerseyNumber: json['jerseyNumber'],
        goals: json['goals'],
        blocked: json['blocked'],
        onTarget: json['onTarget'],
        offTarget: json['offTarget'],
        assists: json['assists'],
      );

  final double? id;

  final double? matchId;

  final double? playerId;

  final double? jerseyNumber;

  final double? goals;

  final double? blocked;

  final double? onTarget;

  final double? offTarget;

  final double? assists;

  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
      };
}

class PlayedSumAggregateOutputType {
  const PlayedSumAggregateOutputType({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
  });

  factory PlayedSumAggregateOutputType.fromJson(Map json) =>
      PlayedSumAggregateOutputType(
        id: json['id'],
        matchId: json['matchId'],
        playerId: json['playerId'],
        jerseyNumber: json['jerseyNumber'],
        goals: json['goals'],
        blocked: json['blocked'],
        onTarget: json['onTarget'],
        offTarget: json['offTarget'],
        assists: json['assists'],
      );

  final int? id;

  final int? matchId;

  final int? playerId;

  final int? jerseyNumber;

  final int? goals;

  final int? blocked;

  final int? onTarget;

  final int? offTarget;

  final int? assists;

  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
      };
}

class PlayedMinAggregateOutputType {
  const PlayedMinAggregateOutputType({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  factory PlayedMinAggregateOutputType.fromJson(Map json) =>
      PlayedMinAggregateOutputType(
        id: json['id'],
        matchId: json['matchId'],
        playerId: json['playerId'],
        jerseyNumber: json['jerseyNumber'],
        entryTime: switch (json['entryTime']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['entryTime']
        },
        leaveTime: switch (json['leaveTime']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['leaveTime']
        },
        goals: json['goals'],
        blocked: json['blocked'],
        onTarget: json['onTarget'],
        offTarget: json['offTarget'],
        assists: json['assists'],
        yellow: json['yellow'],
        red: json['red'],
      );

  final int? id;

  final int? matchId;

  final int? playerId;

  final int? jerseyNumber;

  final DateTime? entryTime;

  final DateTime? leaveTime;

  final int? goals;

  final int? blocked;

  final int? onTarget;

  final int? offTarget;

  final int? assists;

  final bool? yellow;

  final bool? red;

  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime?.toIso8601String(),
        'leaveTime': leaveTime?.toIso8601String(),
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedMaxAggregateOutputType {
  const PlayedMaxAggregateOutputType({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  factory PlayedMaxAggregateOutputType.fromJson(Map json) =>
      PlayedMaxAggregateOutputType(
        id: json['id'],
        matchId: json['matchId'],
        playerId: json['playerId'],
        jerseyNumber: json['jerseyNumber'],
        entryTime: switch (json['entryTime']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['entryTime']
        },
        leaveTime: switch (json['leaveTime']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['leaveTime']
        },
        goals: json['goals'],
        blocked: json['blocked'],
        onTarget: json['onTarget'],
        offTarget: json['offTarget'],
        assists: json['assists'],
        yellow: json['yellow'],
        red: json['red'],
      );

  final int? id;

  final int? matchId;

  final int? playerId;

  final int? jerseyNumber;

  final DateTime? entryTime;

  final DateTime? leaveTime;

  final int? goals;

  final int? blocked;

  final int? onTarget;

  final int? offTarget;

  final int? assists;

  final bool? yellow;

  final bool? red;

  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime?.toIso8601String(),
        'leaveTime': leaveTime?.toIso8601String(),
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedGroupByOutputType {
  const PlayedGroupByOutputType({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory PlayedGroupByOutputType.fromJson(Map json) => PlayedGroupByOutputType(
        id: json['id'],
        matchId: json['matchId'],
        playerId: json['playerId'],
        jerseyNumber: json['jerseyNumber'],
        entryTime: switch (json['entryTime']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['entryTime']
        },
        leaveTime: switch (json['leaveTime']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['leaveTime']
        },
        goals: json['goals'],
        blocked: json['blocked'],
        onTarget: json['onTarget'],
        offTarget: json['offTarget'],
        assists: json['assists'],
        yellow: json['yellow'],
        red: json['red'],
        $count: json['_count'] is Map
            ? _i2.PlayedCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlayedAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlayedSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlayedMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlayedMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? matchId;

  final int? playerId;

  final int? jerseyNumber;

  final DateTime? entryTime;

  final DateTime? leaveTime;

  final int? goals;

  final int? blocked;

  final int? onTarget;

  final int? offTarget;

  final int? assists;

  final bool? yellow;

  final bool? red;

  final _i2.PlayedCountAggregateOutputType? $count;

  final _i2.PlayedAvgAggregateOutputType? $avg;

  final _i2.PlayedSumAggregateOutputType? $sum;

  final _i2.PlayedMinAggregateOutputType? $min;

  final _i2.PlayedMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime?.toIso8601String(),
        'leaveTime': leaveTime?.toIso8601String(),
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class PlayedCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCountOrderByAggregateInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? entryTime;

  final _i2.SortOrder? leaveTime;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  final _i2.SortOrder? yellow;

  final _i2.SortOrder? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedAvgOrderByAggregateInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
      };
}

class PlayedMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedMaxOrderByAggregateInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? entryTime;

  final _i2.SortOrder? leaveTime;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  final _i2.SortOrder? yellow;

  final _i2.SortOrder? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedMinOrderByAggregateInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? entryTime;

  final _i2.SortOrder? leaveTime;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  final _i2.SortOrder? yellow;

  final _i2.SortOrder? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedSumOrderByAggregateInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
      };
}

class PlayedOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedOrderByWithAggregationInput({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? matchId;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? jerseyNumber;

  final _i2.SortOrder? entryTime;

  final _i2.SortOrder? leaveTime;

  final _i2.SortOrder? goals;

  final _i2.SortOrder? blocked;

  final _i2.SortOrder? onTarget;

  final _i2.SortOrder? offTarget;

  final _i2.SortOrder? assists;

  final _i2.SortOrder? yellow;

  final _i2.SortOrder? red;

  final _i2.PlayedCountOrderByAggregateInput? $count;

  final _i2.PlayedAvgOrderByAggregateInput? $avg;

  final _i2.PlayedMaxOrderByAggregateInput? $max;

  final _i2.PlayedMinOrderByAggregateInput? $min;

  final _i2.PlayedSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class PlayedScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final _i1.PrismaUnion<_i2.PlayedScalarWhereWithAggregatesInput,
      Iterable<_i2.PlayedScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.PlayedScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.PlayedScalarWhereWithAggregatesInput,
      Iterable<_i2.PlayedScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? matchId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? playerId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? jerseyNumber;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? entryTime;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? leaveTime;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? goals;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? blocked;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? onTarget;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? offTarget;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? assists;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? yellow;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? red;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedCountAggregateOutputTypeSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.$all,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? entryTime;

  final bool? leaveTime;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  final bool? yellow;

  final bool? red;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        '_all': $all,
      };
}

class PlayedGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedGroupByOutputTypeCountArgs({this.select});

  final _i2.PlayedCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayedAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedAvgAggregateOutputTypeSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
      };
}

class PlayedGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedGroupByOutputTypeAvgArgs({this.select});

  final _i2.PlayedAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayedSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedSumAggregateOutputTypeSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
      };
}

class PlayedGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedGroupByOutputTypeSumArgs({this.select});

  final _i2.PlayedSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayedMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedMinAggregateOutputTypeSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? entryTime;

  final bool? leaveTime;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  final bool? yellow;

  final bool? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedGroupByOutputTypeMinArgs({this.select});

  final _i2.PlayedMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayedMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedMaxAggregateOutputTypeSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? entryTime;

  final bool? leaveTime;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  final bool? yellow;

  final bool? red;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
      };
}

class PlayedGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedGroupByOutputTypeMaxArgs({this.select});

  final _i2.PlayedMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class PlayedGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayedGroupByOutputTypeSelect({
    this.id,
    this.matchId,
    this.playerId,
    this.jerseyNumber,
    this.entryTime,
    this.leaveTime,
    this.goals,
    this.blocked,
    this.onTarget,
    this.offTarget,
    this.assists,
    this.yellow,
    this.red,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? matchId;

  final bool? playerId;

  final bool? jerseyNumber;

  final bool? entryTime;

  final bool? leaveTime;

  final bool? goals;

  final bool? blocked;

  final bool? onTarget;

  final bool? offTarget;

  final bool? assists;

  final bool? yellow;

  final bool? red;

  final _i1.PrismaUnion<bool, _i2.PlayedGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.PlayedGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.PlayedGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.PlayedGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.PlayedGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'matchId': matchId,
        'playerId': playerId,
        'jerseyNumber': jerseyNumber,
        'entryTime': entryTime,
        'leaveTime': leaveTime,
        'goals': goals,
        'blocked': blocked,
        'onTarget': onTarget,
        'offTarget': offTarget,
        'assists': assists,
        'yellow': yellow,
        'red': red,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregatePlayed {
  const AggregatePlayed({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregatePlayed.fromJson(Map json) => AggregatePlayed(
        $count: json['_count'] is Map
            ? _i2.PlayedCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.PlayedAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.PlayedSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.PlayedMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.PlayedMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.PlayedCountAggregateOutputType? $count;

  final _i2.PlayedAvgAggregateOutputType? $avg;

  final _i2.PlayedSumAggregateOutputType? $sum;

  final _i2.PlayedMinAggregateOutputType? $min;

  final _i2.PlayedMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregatePlayedCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayedCountArgs({this.select});

  final _i2.PlayedCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayedAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayedAvgArgs({this.select});

  final _i2.PlayedAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayedSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayedSumArgs({this.select});

  final _i2.PlayedSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayedMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayedMinArgs({this.select});

  final _i2.PlayedMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayedMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayedMaxArgs({this.select});

  final _i2.PlayedMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregatePlayedSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregatePlayedSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregatePlayedCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayedAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayedSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayedMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregatePlayedMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class PlayerCreateWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateWithoutCanPlayInput({
    required this.firstName,
    required this.lastName,
    this.played,
  });

  final String firstName;

  final String lastName;

  final _i2.PlayedCreateNestedManyWithoutPlayerInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
      };
}

class PlayerUncheckedCreateWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedCreateWithoutCanPlayInput({
    this.id,
    required this.firstName,
    required this.lastName,
    this.played,
  });

  final int? id;

  final String firstName;

  final String lastName;

  final _i2.PlayedUncheckedCreateNestedManyWithoutPlayerInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
      };
}

class PlayerCreateOrConnectWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateOrConnectWithoutCanPlayInput({
    required this.where,
    required this.create,
  });

  final _i2.PlayerWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutCanPlayInput,
      _i2.PlayerUncheckedCreateWithoutCanPlayInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class PlayerCreateNestedOneWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerCreateNestedOneWithoutCanPlayInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutCanPlayInput,
      _i2.PlayerUncheckedCreateWithoutCanPlayInput>? create;

  final _i2.PlayerCreateOrConnectWithoutCanPlayInput? connectOrCreate;

  final _i2.PlayerWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CanPlayCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateInput({
    required this.position,
    required this.player,
  });

  final _i3.Position position;

  final _i2.PlayerCreateNestedOneWithoutCanPlayInput player;

  @override
  Map<String, dynamic> toJson() => {
        'position': position,
        'player': player,
      };
}

class CanPlayUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedCreateInput({
    this.id,
    required this.playerId,
    required this.position,
  });

  final int? id;

  final int playerId;

  final _i3.Position position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCreateManyInput({
    this.id,
    required this.playerId,
    required this.position,
  });

  final int? id;

  final int playerId;

  final _i3.Position position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class PlayerUpdateWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpdateWithoutCanPlayInput({
    this.firstName,
    this.lastName,
    this.played,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i2.PlayedUpdateManyWithoutPlayerNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
      };
}

class PlayerUncheckedUpdateWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUncheckedUpdateWithoutCanPlayInput({
    this.id,
    this.firstName,
    this.lastName,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i2.PlayedUncheckedUpdateManyWithoutPlayerNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played,
      };
}

class PlayerUpsertWithoutCanPlayInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpsertWithoutCanPlayInput({
    required this.update,
    required this.create,
  });

  final _i1.PrismaUnion<_i2.PlayerUpdateWithoutCanPlayInput,
      _i2.PlayerUncheckedUpdateWithoutCanPlayInput> update;

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutCanPlayInput,
      _i2.PlayerUncheckedCreateWithoutCanPlayInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
      };
}

class PlayerUpdateOneRequiredWithoutCanPlayNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const PlayerUpdateOneRequiredWithoutCanPlayNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.PlayerCreateWithoutCanPlayInput,
      _i2.PlayerUncheckedCreateWithoutCanPlayInput>? create;

  final _i2.PlayerCreateOrConnectWithoutCanPlayInput? connectOrCreate;

  final _i2.PlayerUpsertWithoutCanPlayInput? upsert;

  final _i2.PlayerWhereUniqueInput? connect;

  final _i1.PrismaUnion<_i2.PlayerUpdateWithoutCanPlayInput,
      _i2.PlayerUncheckedUpdateWithoutCanPlayInput>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class CanPlayUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUpdateInput({
    this.position,
    this.player,
  });

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  final _i2.PlayerUpdateOneRequiredWithoutCanPlayNestedInput? player;

  @override
  Map<String, dynamic> toJson() => {
        'position': position,
        'player': player,
      };
}

class CanPlayUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedUpdateInput({
    this.id,
    this.playerId,
    this.position,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? playerId;

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayUncheckedUpdateManyInput({
    this.id,
    this.playerId,
    this.position,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? playerId;

  final _i1
      .PrismaUnion<_i3.Position, _i2.EnumPositionFieldUpdateOperationsInput>?
      position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayCountAggregateOutputType {
  const CanPlayCountAggregateOutputType({
    this.id,
    this.playerId,
    this.position,
    this.$all,
  });

  factory CanPlayCountAggregateOutputType.fromJson(Map json) =>
      CanPlayCountAggregateOutputType(
        id: json['id'],
        playerId: json['playerId'],
        position: json['position'],
        $all: json['_all'],
      );

  final int? id;

  final int? playerId;

  final int? position;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
        '_all': $all,
      };
}

class CanPlayAvgAggregateOutputType {
  const CanPlayAvgAggregateOutputType({
    this.id,
    this.playerId,
  });

  factory CanPlayAvgAggregateOutputType.fromJson(Map json) =>
      CanPlayAvgAggregateOutputType(
        id: json['id'],
        playerId: json['playerId'],
      );

  final double? id;

  final double? playerId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
      };
}

class CanPlaySumAggregateOutputType {
  const CanPlaySumAggregateOutputType({
    this.id,
    this.playerId,
  });

  factory CanPlaySumAggregateOutputType.fromJson(Map json) =>
      CanPlaySumAggregateOutputType(
        id: json['id'],
        playerId: json['playerId'],
      );

  final int? id;

  final int? playerId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
      };
}

class CanPlayMinAggregateOutputType {
  const CanPlayMinAggregateOutputType({
    this.id,
    this.playerId,
    this.position,
  });

  factory CanPlayMinAggregateOutputType.fromJson(Map json) =>
      CanPlayMinAggregateOutputType(
        id: json['id'],
        playerId: json['playerId'],
        position: json['position'] != null
            ? _i3.Position.values.firstWhere((e) => e.name == json['position'])
            : null,
      );

  final int? id;

  final int? playerId;

  final _i3.Position? position;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position?.name,
      };
}

class CanPlayMaxAggregateOutputType {
  const CanPlayMaxAggregateOutputType({
    this.id,
    this.playerId,
    this.position,
  });

  factory CanPlayMaxAggregateOutputType.fromJson(Map json) =>
      CanPlayMaxAggregateOutputType(
        id: json['id'],
        playerId: json['playerId'],
        position: json['position'] != null
            ? _i3.Position.values.firstWhere((e) => e.name == json['position'])
            : null,
      );

  final int? id;

  final int? playerId;

  final _i3.Position? position;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position?.name,
      };
}

class CanPlayGroupByOutputType {
  const CanPlayGroupByOutputType({
    this.id,
    this.playerId,
    this.position,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory CanPlayGroupByOutputType.fromJson(Map json) =>
      CanPlayGroupByOutputType(
        id: json['id'],
        playerId: json['playerId'],
        position: json['position'] != null
            ? _i3.Position.values.firstWhere((e) => e.name == json['position'])
            : null,
        $count: json['_count'] is Map
            ? _i2.CanPlayCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.CanPlayAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.CanPlaySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CanPlayMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CanPlayMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? playerId;

  final _i3.Position? position;

  final _i2.CanPlayCountAggregateOutputType? $count;

  final _i2.CanPlayAvgAggregateOutputType? $avg;

  final _i2.CanPlaySumAggregateOutputType? $sum;

  final _i2.CanPlayMinAggregateOutputType? $min;

  final _i2.CanPlayMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position?.name,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class CanPlayCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCountOrderByAggregateInput({
    this.id,
    this.playerId,
    this.position,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayAvgOrderByAggregateInput({
    this.id,
    this.playerId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
      };
}

class CanPlayMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayMaxOrderByAggregateInput({
    this.id,
    this.playerId,
    this.position,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayMinOrderByAggregateInput({
    this.id,
    this.playerId,
    this.position,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlaySumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlaySumOrderByAggregateInput({
    this.id,
    this.playerId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
      };
}

class CanPlayOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayOrderByWithAggregationInput({
    this.id,
    this.playerId,
    this.position,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? playerId;

  final _i2.SortOrder? position;

  final _i2.CanPlayCountOrderByAggregateInput? $count;

  final _i2.CanPlayAvgOrderByAggregateInput? $avg;

  final _i2.CanPlayMaxOrderByAggregateInput? $max;

  final _i2.CanPlayMinOrderByAggregateInput? $min;

  final _i2.CanPlaySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedEnumPositionWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumPositionWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i3.Position? equals;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? $in;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? notIn;

  final _i1
      .PrismaUnion<_i3.Position, _i2.NestedEnumPositionWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumPositionFilter? $min;

  final _i2.NestedEnumPositionFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumPositionWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumPositionWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i3.Position? equals;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? $in;

  final _i1.PrismaUnion<Iterable<_i3.Position>, _i3.Position>? notIn;

  final _i1
      .PrismaUnion<_i3.Position, _i2.NestedEnumPositionWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumPositionFilter? $min;

  final _i2.NestedEnumPositionFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class CanPlayScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.playerId,
    this.position,
  });

  final _i1.PrismaUnion<_i2.CanPlayScalarWhereWithAggregatesInput,
      Iterable<_i2.CanPlayScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CanPlayScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CanPlayScalarWhereWithAggregatesInput,
      Iterable<_i2.CanPlayScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? playerId;

  final _i1.PrismaUnion<_i2.EnumPositionWithAggregatesFilter, _i3.Position>?
      position;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayCountAggregateOutputTypeSelect({
    this.id,
    this.playerId,
    this.position,
    this.$all,
  });

  final bool? id;

  final bool? playerId;

  final bool? position;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
        '_all': $all,
      };
}

class CanPlayGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayGroupByOutputTypeCountArgs({this.select});

  final _i2.CanPlayCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CanPlayAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayAvgAggregateOutputTypeSelect({
    this.id,
    this.playerId,
  });

  final bool? id;

  final bool? playerId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
      };
}

class CanPlayGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayGroupByOutputTypeAvgArgs({this.select});

  final _i2.CanPlayAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CanPlaySumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlaySumAggregateOutputTypeSelect({
    this.id,
    this.playerId,
  });

  final bool? id;

  final bool? playerId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
      };
}

class CanPlayGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayGroupByOutputTypeSumArgs({this.select});

  final _i2.CanPlaySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CanPlayMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayMinAggregateOutputTypeSelect({
    this.id,
    this.playerId,
    this.position,
  });

  final bool? id;

  final bool? playerId;

  final bool? position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayGroupByOutputTypeMinArgs({this.select});

  final _i2.CanPlayMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CanPlayMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayMaxAggregateOutputTypeSelect({
    this.id,
    this.playerId,
    this.position,
  });

  final bool? id;

  final bool? playerId;

  final bool? position;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
      };
}

class CanPlayGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayGroupByOutputTypeMaxArgs({this.select});

  final _i2.CanPlayMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CanPlayGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CanPlayGroupByOutputTypeSelect({
    this.id,
    this.playerId,
    this.position,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? playerId;

  final bool? position;

  final _i1.PrismaUnion<bool, _i2.CanPlayGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CanPlayGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.CanPlayGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.CanPlayGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CanPlayGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateCanPlay {
  const AggregateCanPlay({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateCanPlay.fromJson(Map json) => AggregateCanPlay(
        $count: json['_count'] is Map
            ? _i2.CanPlayCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.CanPlayAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.CanPlaySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CanPlayMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CanPlayMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CanPlayCountAggregateOutputType? $count;

  final _i2.CanPlayAvgAggregateOutputType? $avg;

  final _i2.CanPlaySumAggregateOutputType? $sum;

  final _i2.CanPlayMinAggregateOutputType? $min;

  final _i2.CanPlayMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateCanPlayCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCanPlayCountArgs({this.select});

  final _i2.CanPlayCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCanPlayAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCanPlayAvgArgs({this.select});

  final _i2.CanPlayAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCanPlaySumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCanPlaySumArgs({this.select});

  final _i2.CanPlaySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCanPlayMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCanPlayMinArgs({this.select});

  final _i2.CanPlayMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCanPlayMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCanPlayMaxArgs({this.select});

  final _i2.CanPlayMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCanPlaySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCanPlaySelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCanPlayCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCanPlayAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateCanPlaySumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateCanPlayMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCanPlayMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class UserCreateWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutHistoryInput({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.salt,
  });

  final String email;

  final String firstName;

  final String lastName;

  final String password;

  final String salt;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserUncheckedCreateWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutHistoryInput({
    this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.salt,
  });

  final int? id;

  final String email;

  final String firstName;

  final String lastName;

  final String password;

  final String salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserCreateOrConnectWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutHistoryInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserCreateWithoutHistoryInput,
      _i2.UserUncheckedCreateWithoutHistoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UserCreateNestedOneWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutHistoryInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutHistoryInput,
      _i2.UserUncheckedCreateWithoutHistoryInput>? create;

  final _i2.UserCreateOrConnectWithoutHistoryInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class HistoryCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateInput({
    this.createdAt,
    required this.actionType,
    required this.additionnalInformations,
    required this.author,
  });

  final DateTime? createdAt;

  final _i3.ActionType actionType;

  final String additionnalInformations;

  final _i2.UserCreateNestedOneWithoutHistoryInput author;

  @override
  Map<String, dynamic> toJson() => {
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        'author': author,
      };
}

class HistoryUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedCreateInput({
    this.id,
    required this.authorId,
    this.createdAt,
    required this.actionType,
    required this.additionnalInformations,
  });

  final int? id;

  final int authorId;

  final DateTime? createdAt;

  final _i3.ActionType actionType;

  final String additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCreateManyInput({
    this.id,
    required this.authorId,
    this.createdAt,
    required this.actionType,
    required this.additionnalInformations,
  });

  final int? id;

  final int authorId;

  final DateTime? createdAt;

  final _i3.ActionType actionType;

  final String additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class UserUpdateWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutHistoryInput({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? salt;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserUncheckedUpdateWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutHistoryInput({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? salt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
      };
}

class UserUpsertWithoutHistoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutHistoryInput({
    required this.update,
    required this.create,
  });

  final _i1.PrismaUnion<_i2.UserUpdateWithoutHistoryInput,
      _i2.UserUncheckedUpdateWithoutHistoryInput> update;

  final _i1.PrismaUnion<_i2.UserCreateWithoutHistoryInput,
      _i2.UserUncheckedCreateWithoutHistoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
      };
}

class UserUpdateOneRequiredWithoutHistoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutHistoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutHistoryInput,
      _i2.UserUncheckedCreateWithoutHistoryInput>? create;

  final _i2.UserCreateOrConnectWithoutHistoryInput? connectOrCreate;

  final _i2.UserUpsertWithoutHistoryInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutHistoryInput,
      _i2.UserUncheckedUpdateWithoutHistoryInput>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class HistoryUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUpdateInput({
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.author,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  final _i2.UserUpdateOneRequiredWithoutHistoryNestedInput? author;

  @override
  Map<String, dynamic> toJson() => {
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        'author': author,
      };
}

class HistoryUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedUpdateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryUncheckedUpdateManyInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? authorId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.EnumactionTypeFieldUpdateOperationsInput>? actionType;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryCountAggregateOutputType {
  const HistoryCountAggregateOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.$all,
  });

  factory HistoryCountAggregateOutputType.fromJson(Map json) =>
      HistoryCountAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: json['created_at'],
        actionType: json['action_type'],
        additionnalInformations: json['additionnal_informations'],
        $all: json['_all'],
      );

  final int? id;

  final int? authorId;

  final int? createdAt;

  final int? actionType;

  final int? additionnalInformations;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        '_all': $all,
      };
}

class HistoryAvgAggregateOutputType {
  const HistoryAvgAggregateOutputType({
    this.id,
    this.authorId,
  });

  factory HistoryAvgAggregateOutputType.fromJson(Map json) =>
      HistoryAvgAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
      );

  final double? id;

  final double? authorId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
      };
}

class HistorySumAggregateOutputType {
  const HistorySumAggregateOutputType({
    this.id,
    this.authorId,
  });

  factory HistorySumAggregateOutputType.fromJson(Map json) =>
      HistorySumAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
      );

  final int? id;

  final int? authorId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
      };
}

class HistoryMinAggregateOutputType {
  const HistoryMinAggregateOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  factory HistoryMinAggregateOutputType.fromJson(Map json) =>
      HistoryMinAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        actionType: json['action_type'] != null
            ? _i3.ActionType.values
                .firstWhere((e) => e.name == json['action_type'])
            : null,
        additionnalInformations: json['additionnal_informations'],
      );

  final int? id;

  final int? authorId;

  final DateTime? createdAt;

  final _i3.ActionType? actionType;

  final String? additionnalInformations;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt?.toIso8601String(),
        'action_type': actionType?.name,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryMaxAggregateOutputType {
  const HistoryMaxAggregateOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  factory HistoryMaxAggregateOutputType.fromJson(Map json) =>
      HistoryMaxAggregateOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        actionType: json['action_type'] != null
            ? _i3.ActionType.values
                .firstWhere((e) => e.name == json['action_type'])
            : null,
        additionnalInformations: json['additionnal_informations'],
      );

  final int? id;

  final int? authorId;

  final DateTime? createdAt;

  final _i3.ActionType? actionType;

  final String? additionnalInformations;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt?.toIso8601String(),
        'action_type': actionType?.name,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryGroupByOutputType {
  const HistoryGroupByOutputType({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory HistoryGroupByOutputType.fromJson(Map json) =>
      HistoryGroupByOutputType(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        actionType: json['action_type'] != null
            ? _i3.ActionType.values
                .firstWhere((e) => e.name == json['action_type'])
            : null,
        additionnalInformations: json['additionnal_informations'],
        $count: json['_count'] is Map
            ? _i2.HistoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.HistoryAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.HistorySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.HistoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.HistoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? authorId;

  final DateTime? createdAt;

  final _i3.ActionType? actionType;

  final String? additionnalInformations;

  final _i2.HistoryCountAggregateOutputType? $count;

  final _i2.HistoryAvgAggregateOutputType? $avg;

  final _i2.HistorySumAggregateOutputType? $sum;

  final _i2.HistoryMinAggregateOutputType? $min;

  final _i2.HistoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt?.toIso8601String(),
        'action_type': actionType?.name,
        'additionnal_informations': additionnalInformations,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class HistoryCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCountOrderByAggregateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? actionType;

  final _i2.SortOrder? additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryAvgOrderByAggregateInput({
    this.id,
    this.authorId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
      };
}

class HistoryMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryMaxOrderByAggregateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? actionType;

  final _i2.SortOrder? additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryMinOrderByAggregateInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? actionType;

  final _i2.SortOrder? additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistorySumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistorySumOrderByAggregateInput({
    this.id,
    this.authorId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
      };
}

class HistoryOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryOrderByWithAggregationInput({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? authorId;

  final _i2.SortOrder? createdAt;

  final _i2.SortOrder? actionType;

  final _i2.SortOrder? additionnalInformations;

  final _i2.HistoryCountOrderByAggregateInput? $count;

  final _i2.HistoryAvgOrderByAggregateInput? $avg;

  final _i2.HistoryMaxOrderByAggregateInput? $max;

  final _i2.HistoryMinOrderByAggregateInput? $min;

  final _i2.HistorySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedEnumactionTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumactionTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i3.ActionType? equals;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? notIn;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.NestedEnumactionTypeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumactionTypeFilter? $min;

  final _i2.NestedEnumactionTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumactionTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumactionTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i3.ActionType? equals;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ActionType>, _i3.ActionType>? notIn;

  final _i1.PrismaUnion<_i3.ActionType,
      _i2.NestedEnumactionTypeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumactionTypeFilter? $min;

  final _i2.NestedEnumactionTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class HistoryScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final _i1.PrismaUnion<_i2.HistoryScalarWhereWithAggregatesInput,
      Iterable<_i2.HistoryScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.HistoryScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.HistoryScalarWhereWithAggregatesInput,
      Iterable<_i2.HistoryScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? authorId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  final _i1.PrismaUnion<_i2.EnumactionTypeWithAggregatesFilter, _i3.ActionType>?
      actionType;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryCountAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.$all,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? actionType;

  final bool? additionnalInformations;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        '_all': $all,
      };
}

class HistoryGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryGroupByOutputTypeCountArgs({this.select});

  final _i2.HistoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HistoryAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryAvgAggregateOutputTypeSelect({
    this.id,
    this.authorId,
  });

  final bool? id;

  final bool? authorId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
      };
}

class HistoryGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryGroupByOutputTypeAvgArgs({this.select});

  final _i2.HistoryAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HistorySumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistorySumAggregateOutputTypeSelect({
    this.id,
    this.authorId,
  });

  final bool? id;

  final bool? authorId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
      };
}

class HistoryGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryGroupByOutputTypeSumArgs({this.select});

  final _i2.HistorySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HistoryMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryMinAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? actionType;

  final bool? additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryGroupByOutputTypeMinArgs({this.select});

  final _i2.HistoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HistoryMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryMaxAggregateOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? actionType;

  final bool? additionnalInformations;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
      };
}

class HistoryGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryGroupByOutputTypeMaxArgs({this.select});

  final _i2.HistoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class HistoryGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const HistoryGroupByOutputTypeSelect({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? authorId;

  final bool? createdAt;

  final bool? actionType;

  final bool? additionnalInformations;

  final _i1.PrismaUnion<bool, _i2.HistoryGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.HistoryGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.HistoryGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.HistoryGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.HistoryGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt,
        'action_type': actionType,
        'additionnal_informations': additionnalInformations,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateHistory {
  const AggregateHistory({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateHistory.fromJson(Map json) => AggregateHistory(
        $count: json['_count'] is Map
            ? _i2.HistoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.HistoryAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.HistorySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.HistoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.HistoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.HistoryCountAggregateOutputType? $count;

  final _i2.HistoryAvgAggregateOutputType? $avg;

  final _i2.HistorySumAggregateOutputType? $sum;

  final _i2.HistoryMinAggregateOutputType? $min;

  final _i2.HistoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateHistoryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHistoryCountArgs({this.select});

  final _i2.HistoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHistoryAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHistoryAvgArgs({this.select});

  final _i2.HistoryAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHistorySumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHistorySumArgs({this.select});

  final _i2.HistorySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHistoryMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHistoryMinArgs({this.select});

  final _i2.HistoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHistoryMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHistoryMaxArgs({this.select});

  final _i2.HistoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateHistorySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateHistorySelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateHistoryCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateHistoryAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateHistorySumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateHistoryMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateHistoryMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum OpponentScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Opponent'),
  name$<String>('name', 'Opponent'),
  fffId<int>('fffId', 'Opponent');

  const OpponentScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class MatchCreateWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateWithoutOpponentInput({
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    this.team,
    this.played,
  });

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.TeamCreateNestedOneWithoutMatchesInput? team;

  final _i2.PlayedCreateNestedManyWithoutMatchInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'played': played,
      };
}

class MatchUncheckedCreateWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedCreateWithoutOpponentInput({
    this.id,
    this.teamId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
    this.played,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? teamId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  final _i2.PlayedUncheckedCreateNestedManyWithoutMatchInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'played': played,
      };
}

class MatchCreateOrConnectWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateOrConnectWithoutOpponentInput({
    required this.where,
    required this.create,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchCreateWithoutOpponentInput,
      _i2.MatchUncheckedCreateWithoutOpponentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class MatchCreateManyOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateManyOpponentInput({
    this.id,
    this.teamId,
    required this.teamScore,
    required this.opponentScore,
    required this.address,
    required this.date,
    required this.isHome,
    required this.coach,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? teamId;

  final int teamScore;

  final int opponentScore;

  final String address;

  final DateTime date;

  final bool isHome;

  final String coach;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
      };
}

class MatchCreateManyOpponentInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateManyOpponentInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.MatchCreateManyOpponentInput,
      Iterable<_i2.MatchCreateManyOpponentInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class MatchCreateNestedManyWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchCreateNestedManyWithoutOpponentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutOpponentInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutOpponentInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutOpponentInput,
              Iterable<_i2.MatchUncheckedCreateWithoutOpponentInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutOpponentInput,
      Iterable<_i2.MatchCreateOrConnectWithoutOpponentInput>>? connectOrCreate;

  final _i2.MatchCreateManyOpponentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class OpponentCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCreateInput({
    required this.name,
    required this.fffId,
    this.matches,
  });

  final String name;

  final int fffId;

  final _i2.MatchCreateNestedManyWithoutOpponentInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class MatchUncheckedCreateNestedManyWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedCreateNestedManyWithoutOpponentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutOpponentInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutOpponentInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutOpponentInput,
              Iterable<_i2.MatchUncheckedCreateWithoutOpponentInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutOpponentInput,
      Iterable<_i2.MatchCreateOrConnectWithoutOpponentInput>>? connectOrCreate;

  final _i2.MatchCreateManyOpponentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class OpponentUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUncheckedCreateInput({
    this.id,
    required this.name,
    required this.fffId,
    this.matches,
  });

  final int? id;

  final String name;

  final int fffId;

  final _i2.MatchUncheckedCreateNestedManyWithoutOpponentInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class OpponentCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCreateManyInput({
    this.id,
    required this.name,
    required this.fffId,
  });

  final int? id;

  final String name;

  final int fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class MatchUpdateWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateWithoutOpponentInput({
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.team,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.TeamUpdateOneWithoutMatchesNestedInput? team;

  final _i2.PlayedUpdateManyWithoutMatchNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'team': team,
        'played': played,
      };
}

class MatchUncheckedUpdateWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateWithoutOpponentInput({
    this.id,
    this.teamId,
    this.teamScore,
    this.opponentScore,
    this.address,
    this.date,
    this.isHome,
    this.coach,
    this.played,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? teamId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? teamScore;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? opponentScore;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? address;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? date;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? isHome;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? coach;

  final _i2.PlayedUncheckedUpdateManyWithoutMatchNestedInput? played;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'teamId': teamId,
        'teamScore': teamScore,
        'opponentScore': opponentScore,
        'address': address,
        'date': date,
        'isHome': isHome,
        'coach': coach,
        'played': played,
      };
}

class MatchUpsertWithWhereUniqueWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpsertWithWhereUniqueWithoutOpponentInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchUpdateWithoutOpponentInput,
      _i2.MatchUncheckedUpdateWithoutOpponentInput> update;

  final _i1.PrismaUnion<_i2.MatchCreateWithoutOpponentInput,
      _i2.MatchUncheckedCreateWithoutOpponentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class MatchUpdateWithWhereUniqueWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateWithWhereUniqueWithoutOpponentInput({
    required this.where,
    required this.data,
  });

  final _i2.MatchWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MatchUpdateWithoutOpponentInput,
      _i2.MatchUncheckedUpdateWithoutOpponentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MatchUpdateManyWithWhereWithoutOpponentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateManyWithWhereWithoutOpponentInput({
    required this.where,
    required this.data,
  });

  final _i2.MatchScalarWhereInput where;

  final _i1.PrismaUnion<_i2.MatchUpdateManyMutationInput,
      _i2.MatchUncheckedUpdateManyWithoutMatchesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MatchUpdateManyWithoutOpponentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUpdateManyWithoutOpponentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutOpponentInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutOpponentInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutOpponentInput,
              Iterable<_i2.MatchUncheckedCreateWithoutOpponentInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutOpponentInput,
      Iterable<_i2.MatchCreateOrConnectWithoutOpponentInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MatchUpsertWithWhereUniqueWithoutOpponentInput,
      Iterable<_i2.MatchUpsertWithWhereUniqueWithoutOpponentInput>>? upsert;

  final _i2.MatchCreateManyOpponentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MatchUpdateWithWhereUniqueWithoutOpponentInput,
      Iterable<_i2.MatchUpdateWithWhereUniqueWithoutOpponentInput>>? update;

  final _i1.PrismaUnion<_i2.MatchUpdateManyWithWhereWithoutOpponentInput,
      Iterable<_i2.MatchUpdateManyWithWhereWithoutOpponentInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MatchScalarWhereInput,
      Iterable<_i2.MatchScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class OpponentUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUpdateInput({
    this.name,
    this.fffId,
    this.matches,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  final _i2.MatchUpdateManyWithoutOpponentNestedInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class MatchUncheckedUpdateManyWithoutOpponentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MatchUncheckedUpdateManyWithoutOpponentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.MatchCreateWithoutOpponentInput,
      _i1.PrismaUnion<
          Iterable<_i2.MatchCreateWithoutOpponentInput>,
          _i1.PrismaUnion<_i2.MatchUncheckedCreateWithoutOpponentInput,
              Iterable<_i2.MatchUncheckedCreateWithoutOpponentInput>>>>? create;

  final _i1.PrismaUnion<_i2.MatchCreateOrConnectWithoutOpponentInput,
      Iterable<_i2.MatchCreateOrConnectWithoutOpponentInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.MatchUpsertWithWhereUniqueWithoutOpponentInput,
      Iterable<_i2.MatchUpsertWithWhereUniqueWithoutOpponentInput>>? upsert;

  final _i2.MatchCreateManyOpponentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MatchWhereUniqueInput,
      Iterable<_i2.MatchWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.MatchUpdateWithWhereUniqueWithoutOpponentInput,
      Iterable<_i2.MatchUpdateWithWhereUniqueWithoutOpponentInput>>? update;

  final _i1.PrismaUnion<_i2.MatchUpdateManyWithWhereWithoutOpponentInput,
      Iterable<_i2.MatchUpdateManyWithWhereWithoutOpponentInput>>? updateMany;

  final _i1.PrismaUnion<_i2.MatchScalarWhereInput,
      Iterable<_i2.MatchScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class OpponentUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUncheckedUpdateInput({
    this.id,
    this.name,
    this.fffId,
    this.matches,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  final _i2.MatchUncheckedUpdateManyWithoutOpponentNestedInput? matches;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches,
      };
}

class OpponentUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUpdateManyMutationInput({
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'fffId': fffId,
      };
}

class OpponentUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentCountAggregateOutputType {
  const OpponentCountAggregateOutputType({
    this.id,
    this.name,
    this.fffId,
    this.$all,
  });

  factory OpponentCountAggregateOutputType.fromJson(Map json) =>
      OpponentCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? fffId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_all': $all,
      };
}

class OpponentAvgAggregateOutputType {
  const OpponentAvgAggregateOutputType({
    this.id,
    this.fffId,
  });

  factory OpponentAvgAggregateOutputType.fromJson(Map json) =>
      OpponentAvgAggregateOutputType(
        id: json['id'],
        fffId: json['fffId'],
      );

  final double? id;

  final double? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class OpponentSumAggregateOutputType {
  const OpponentSumAggregateOutputType({
    this.id,
    this.fffId,
  });

  factory OpponentSumAggregateOutputType.fromJson(Map json) =>
      OpponentSumAggregateOutputType(
        id: json['id'],
        fffId: json['fffId'],
      );

  final int? id;

  final int? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class OpponentMinAggregateOutputType {
  const OpponentMinAggregateOutputType({
    this.id,
    this.name,
    this.fffId,
  });

  factory OpponentMinAggregateOutputType.fromJson(Map json) =>
      OpponentMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
      );

  final int? id;

  final String? name;

  final int? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentMaxAggregateOutputType {
  const OpponentMaxAggregateOutputType({
    this.id,
    this.name,
    this.fffId,
  });

  factory OpponentMaxAggregateOutputType.fromJson(Map json) =>
      OpponentMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
      );

  final int? id;

  final String? name;

  final int? fffId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentGroupByOutputType {
  const OpponentGroupByOutputType({
    this.id,
    this.name,
    this.fffId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory OpponentGroupByOutputType.fromJson(Map json) =>
      OpponentGroupByOutputType(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
        $count: json['_count'] is Map
            ? _i2.OpponentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.OpponentAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.OpponentSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.OpponentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.OpponentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? name;

  final int? fffId;

  final _i2.OpponentCountAggregateOutputType? $count;

  final _i2.OpponentAvgAggregateOutputType? $avg;

  final _i2.OpponentSumAggregateOutputType? $sum;

  final _i2.OpponentMinAggregateOutputType? $min;

  final _i2.OpponentMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class OpponentCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCountOrderByAggregateInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentAvgOrderByAggregateInput({
    this.id,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class OpponentMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentMinOrderByAggregateInput({
    this.id,
    this.name,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentSumOrderByAggregateInput({
    this.id,
    this.fffId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class OpponentOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentOrderByWithAggregationInput({
    this.id,
    this.name,
    this.fffId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? fffId;

  final _i2.OpponentCountOrderByAggregateInput? $count;

  final _i2.OpponentAvgOrderByAggregateInput? $avg;

  final _i2.OpponentMaxOrderByAggregateInput? $max;

  final _i2.OpponentMinOrderByAggregateInput? $min;

  final _i2.OpponentSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class OpponentScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.fffId,
  });

  final _i1.PrismaUnion<_i2.OpponentScalarWhereWithAggregatesInput,
      Iterable<_i2.OpponentScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.OpponentScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.OpponentScalarWhereWithAggregatesInput,
      Iterable<_i2.OpponentScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_all': $all,
      };
}

class OpponentGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentGroupByOutputTypeCountArgs({this.select});

  final _i2.OpponentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class OpponentAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentAvgAggregateOutputTypeSelect({
    this.id,
    this.fffId,
  });

  final bool? id;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class OpponentGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentGroupByOutputTypeAvgArgs({this.select});

  final _i2.OpponentAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class OpponentSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentSumAggregateOutputTypeSelect({
    this.id,
    this.fffId,
  });

  final bool? id;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'fffId': fffId,
      };
}

class OpponentGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentGroupByOutputTypeSumArgs({this.select});

  final _i2.OpponentSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class OpponentMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentGroupByOutputTypeMinArgs({this.select});

  final _i2.OpponentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class OpponentMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
      };
}

class OpponentGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentGroupByOutputTypeMaxArgs({this.select});

  final _i2.OpponentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class OpponentGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const OpponentGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.fffId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? fffId;

  final _i1.PrismaUnion<bool, _i2.OpponentGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.OpponentGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.OpponentGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.OpponentGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.OpponentGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateOpponent {
  const AggregateOpponent({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateOpponent.fromJson(Map json) => AggregateOpponent(
        $count: json['_count'] is Map
            ? _i2.OpponentCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.OpponentAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.OpponentSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.OpponentMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.OpponentMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.OpponentCountAggregateOutputType? $count;

  final _i2.OpponentAvgAggregateOutputType? $avg;

  final _i2.OpponentSumAggregateOutputType? $sum;

  final _i2.OpponentMinAggregateOutputType? $min;

  final _i2.OpponentMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateOpponentCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateOpponentCountArgs({this.select});

  final _i2.OpponentCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateOpponentAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateOpponentAvgArgs({this.select});

  final _i2.OpponentAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateOpponentSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateOpponentSumArgs({this.select});

  final _i2.OpponentSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateOpponentMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateOpponentMinArgs({this.select});

  final _i2.OpponentMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateOpponentMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateOpponentMaxArgs({this.select});

  final _i2.OpponentMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateOpponentSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateOpponentSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateOpponentCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateOpponentAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateOpponentSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateOpponentMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateOpponentMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
