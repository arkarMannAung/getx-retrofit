// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liveModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveModel _$LiveModelFromJson(Map<String, dynamic> json) => LiveModel(
      json['name'] as String,
      (json['match'] as List<dynamic>)
          .map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['matches'] as int,
    );

Map<String, dynamic> _$LiveModelToJson(LiveModel instance) => <String, dynamic>{
      'name': instance.name,
      'matches': instance.matches,
      'match': instance.match,
    };

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      json['id'] as int,
      json['home'] as String,
      json['homegoal'] as String,
      json['away'] as String,
      json['awaygoal'] as String,
      json['date'] as String,
      json['time'] as String,
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'id': instance.id,
      'home': instance.home,
      'homegoal': instance.homegoal,
      'away': instance.away,
      'awaygoal': instance.awaygoal,
      'date': instance.date,
      'time': instance.time,
    };
