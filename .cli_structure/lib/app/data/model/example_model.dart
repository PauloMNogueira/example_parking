import 'package:json_annotation/json_annotation.dart';
part '<__LOWER__>_model.g.dart';

@JsonSerializable()
class <<FEATURE_NAME>> {
  final String id;
  final String name;

  <<FEATURE_NAME>>(
      {required this.id,
      required this.name,
      });

  factory <<FEATURE_NAME>>.fromJson(Map<String, dynamic> data) =>
      _$<<FEATURE_NAME>>FromJson(data);

  Map<String, dynamic> toJson() => _$<<FEATURE_NAME>>ToJson(this);
}
