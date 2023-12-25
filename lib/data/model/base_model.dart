import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

/// A base model class that serves as a foundation for other model classes.
///
/// This class provides basic serialization capabilities for JSON data,
/// which can be extended by other model classes in the application.
/// It uses the `json_annotation` package for JSON serialization.
@JsonSerializable()
class BaseModel {
  /// Default constructor for the [BaseModel].
  ///
  /// It can be used directly or extended by other classes to inherit
  /// its serialization capabilities.
  BaseModel();

  /// A factory constructor that creates an instance of [BaseModel]
  /// from a JSON map.
  ///
  /// This constructor is used for deserializing JSON data into a
  /// [BaseModel] object. It utilizes the generated function
  /// `_$BaseModelFromJson` for this purpose.
  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);

  /// A method to serialize the [BaseModel] instance into a JSON map.
  ///
  /// This method is used for converting a [BaseModel] object
  /// into a map, which can then be serialized into a JSON string.
  /// It utilizes the generated function `_$BaseModelToJson`.
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);
}
