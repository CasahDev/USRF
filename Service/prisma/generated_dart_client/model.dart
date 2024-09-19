// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

enum ActionType implements _i1.PrismaEnum {
  createUser._('CREATE_USER'),
  updateUser._('UPDATE_USER'),
  deleteUser._('DELETE_USER'),
  createTeam._('CREATE_TEAM'),
  updateTeam._('UPDATE_TEAM'),
  deleteTeam._('DELETE_TEAM'),
  createPlayer._('CREATE_PLAYER'),
  updatePlayer._('UPDATE_PLAYER'),
  deletePlayer._('DELETE_PLAYER'),
  createMatch._('CREATE_MATCH'),
  updateMatch._('UPDATE_MATCH'),
  deleteMatch._('DELETE_MATCH'),
  createPlayed._('CREATE_PLAYED'),
  updatePlayed._('UPDATE_PLAYED'),
  deletePlayed._('DELETE_PLAYED'),
  createCanPlay._('CREATE_CAN_PLAY'),
  updateCanPlay._('UPDATE_CAN_PLAY'),
  deleteCanPlay._('DELETE_CAN_PLAY'),
  addGoal._('ADD_GOAL'),
  removeGoal._('REMOVE_GOAL'),
  addAssist._('ADD_ASSIST'),
  removeAssist._('REMOVE_ASSIST'),
  addYellowCard._('ADD_YELLOW_CARD'),
  removeYellowCard._('REMOVE_YELLOW_CARD'),
  addRedCard._('ADD_RED_CARD'),
  removeRedCard._('REMOVE_RED_CARD'),
  addBlockedShot._('ADD_BLOCKED_SHOT'),
  removeBlockedShot._('REMOVE_BLOCKED_SHOT'),
  addOnTargetShot._('ADD_ON_TARGET_SHOT'),
  removeOnTargetShot._('REMOVE_ON_TARGET_SHOT'),
  addOffTargetShot._('ADD_OFF_TARGET_SHOT'),
  removeOffTargetShot._('REMOVE_OFF_TARGET_SHOT'),
  switchPlayer._('SWITCH_PLAYER');

  const ActionType._(this.name);

  @override
  final String name;
}

class History {
  const History({
    this.id,
    this.authorId,
    this.createdAt,
    this.actionType,
    this.additionnalInformations,
    this.author,
  });

  factory History.fromJson(Map json) => History(
        id: json['id'],
        authorId: json['authorId'],
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        actionType: json['action_type'] != null
            ? _i2.ActionType.values
                .firstWhere((e) => e.name == json['action_type'])
            : null,
        additionnalInformations: json['additionnal_informations'],
        author:
            json['author'] is Map ? _i2.User.fromJson(json['author']) : null,
      );

  final int? id;

  final int? authorId;

  final DateTime? createdAt;

  final _i2.ActionType? actionType;

  final String? additionnalInformations;

  final _i2.User? author;

  Map<String, dynamic> toJson() => {
        'id': id,
        'authorId': authorId,
        'created_at': createdAt?.toIso8601String(),
        'action_type': actionType?.name,
        'additionnal_informations': additionnalInformations,
        'author': author?.toJson(),
      };
}

class User {
  const User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.salt,
    this.history,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        password: json['password'],
        salt: json['salt'],
        history: (json['history'] as Iterable?)
            ?.map((json) => _i2.History.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.UserCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? password;

  final String? salt;

  final Iterable<_i2.History>? history;

  final _i3.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'salt': salt,
        'history': history?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Opponent {
  const Opponent({
    this.id,
    this.name,
    this.fffId,
    this.matches,
    this.$count,
  });

  factory Opponent.fromJson(Map json) => Opponent(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
        matches: (json['matches'] as Iterable?)
            ?.map((json) => _i2.Match.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.OpponentCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? name;

  final int? fffId;

  final Iterable<_i2.Match>? matches;

  final _i3.OpponentCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

enum Position implements _i1.PrismaEnum {
  goalkeeper._('Goalkeeper'),
  centerBack._('CenterBack'),
  leftBack._('LeftBack'),
  rightBack._('RightBack'),
  defensiveMidfielder._('DefensiveMidfielder'),
  centralMidfielder._('CentralMidfielder'),
  attackingMidfielder._('AttackingMidfielder'),
  leftWinger._('LeftWinger'),
  rightWinger._('RightWinger'),
  striker._('Striker');

  const Position._(this.name);

  @override
  final String name;
}

class CanPlay {
  const CanPlay({
    this.id,
    this.playerId,
    this.position,
    this.player,
  });

  factory CanPlay.fromJson(Map json) => CanPlay(
        id: json['id'],
        playerId: json['playerId'],
        position: json['position'] != null
            ? _i2.Position.values.firstWhere((e) => e.name == json['position'])
            : null,
        player:
            json['player'] is Map ? _i2.Player.fromJson(json['player']) : null,
      );

  final int? id;

  final int? playerId;

  final _i2.Position? position;

  final _i2.Player? player;

  Map<String, dynamic> toJson() => {
        'id': id,
        'playerId': playerId,
        'position': position?.name,
        'player': player?.toJson(),
      };
}

class Player {
  const Player({
    this.id,
    this.firstName,
    this.lastName,
    this.played,
    this.canPlay,
    this.$count,
  });

  factory Player.fromJson(Map json) => Player(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        played: (json['played'] as Iterable?)
            ?.map((json) => _i2.Played.fromJson(json)),
        canPlay: (json['can_play'] as Iterable?)
            ?.map((json) => _i2.CanPlay.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.PlayerCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? firstName;

  final String? lastName;

  final Iterable<_i2.Played>? played;

  final Iterable<_i2.CanPlay>? canPlay;

  final _i3.PlayerCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'played': played?.map((e) => e.toJson()),
        'can_play': canPlay?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Played {
  const Played({
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

  factory Played.fromJson(Map json) => Played(
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
        match: json['match'] is Map ? _i2.Match.fromJson(json['match']) : null,
        player:
            json['player'] is Map ? _i2.Player.fromJson(json['player']) : null,
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

  final _i2.Match? match;

  final _i2.Player? player;

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
        'match': match?.toJson(),
        'player': player?.toJson(),
      };
}

class Match {
  const Match({
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

  factory Match.fromJson(Map json) => Match(
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
        team: json['team'] is Map ? _i2.Team.fromJson(json['team']) : null,
        opponent: json['opponent'] is Map
            ? _i2.Opponent.fromJson(json['opponent'])
            : null,
        played: (json['played'] as Iterable?)
            ?.map((json) => _i2.Played.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.MatchCountOutputType.fromJson(json['_count'])
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

  final _i2.Team? team;

  final _i2.Opponent? opponent;

  final Iterable<_i2.Played>? played;

  final _i3.MatchCountOutputType? $count;

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
        'team': team?.toJson(),
        'opponent': opponent?.toJson(),
        'played': played?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Team {
  const Team({
    this.id,
    this.name,
    this.fffId,
    this.matches,
    this.$count,
  });

  factory Team.fromJson(Map json) => Team(
        id: json['id'],
        name: json['name'],
        fffId: json['fffId'],
        matches: (json['matches'] as Iterable?)
            ?.map((json) => _i2.Match.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.TeamCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? name;

  final int? fffId;

  final Iterable<_i2.Match>? matches;

  final _i3.TeamCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'fffId': fffId,
        'matches': matches?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}
