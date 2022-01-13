import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()
class Home {
  final String id;
  final String name;

  Home(
      {required this.id,
      required this.name,
      });

  factory Home.fromJson(Map<String, dynamic> data) =>
      _$HomeFromJson(data);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
