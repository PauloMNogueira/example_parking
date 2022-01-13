import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class Profile {
  final String id;
  final String name;

  Profile(
      {required this.id,
      required this.name,
      });

  factory Profile.fromJson(Map<String, dynamic> data) =>
      _$ProfileFromJson(data);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
