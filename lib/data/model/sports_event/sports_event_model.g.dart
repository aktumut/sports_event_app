// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportsEventModel _$SportsEventModelFromJson(Map<String, dynamic> json) =>
    SportsEventModel(
      iconUrl: json['iconUrl'] as String? ?? 'assets/svg/icon_game_null.svg',
      league: json['league'] as String? ?? 'Independent League',
      teams: json['teams'] as String? ?? 'No recognized teams',
      sportType: json['sportType'] as String? ?? 'No sport type',
      dateStarting: json['dateStarting'] as String? ?? 'Unknown day',
      timeStarting: json['timeStarting'] as String? ?? 'Unknown time',
      description: json['description'] as String? ?? 'No description',
    );

Map<String, dynamic> _$SportsEventModelToJson(SportsEventModel instance) =>
    <String, dynamic>{
      'iconUrl': instance.iconUrl,
      'league': instance.league,
      'teams': instance.teams,
      'sportType': instance.sportType,
      'dateStarting': instance.dateStarting,
      'timeStarting': instance.timeStarting,
      'description': instance.description,
    };
