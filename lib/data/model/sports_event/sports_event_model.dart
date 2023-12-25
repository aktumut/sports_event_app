import 'package:json_annotation/json_annotation.dart';
import 'package:sports_event_app/data/model/base_model.dart';
import 'package:sports_event_app/utils/app_images.dart';
import 'package:sports_event_app/utils/constants.dart';

part 'sports_event_model.g.dart';

/// Data model representing a sports event.
@JsonSerializable()
class SportsEventModel extends BaseModel {
  /// Constructs a [SportsEventModel] with the given parameters.
  SportsEventModel({
    this.iconUrl,
    this.league,
    this.teams,
    this.sportType,
    this.dateStarting,
    this.timeStarting,
  });

  /// Factory constructor for creating a new [SportsEventModel] from JSON
  factory SportsEventModel.fromJson(Map<String, dynamic> json) =>
      _$SportsEventModelFromJson(json);

  /// Icon Url of the event.
  @JsonKey(defaultValue: AppImages.iconGameNull)
  String? iconUrl;

  /// League of the event.
  @JsonKey(defaultValue: tNullIndependentLeague)
  String? league;

  /// Names of the teams participating in the event.
  @JsonKey(defaultValue: tTextNullTeams)
  String? teams;

  /// Type of sport.
  @JsonKey(defaultValue: tTextNullSportType)
  String? sportType;

  /// Date when the event starts.
  @JsonKey(defaultValue: tTextNullDateStarting)
  String? dateStarting;

  /// Time when the event starts.
  @JsonKey(defaultValue: tTextNullTimeStarting)
  String? timeStarting;

  @override

  /// Converts [SportsEventModel] instance to a JSON map.
  Map<String, dynamic> toJson() => _$SportsEventModelToJson(this);
}
