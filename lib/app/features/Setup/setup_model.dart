import 'package:json_annotation/json_annotation.dart';
part 'setup_model.g.dart';

@JsonSerializable()
class Setup {
  final String id;
  final String name;

  Setup(
      {required this.id,
      required this.name,
      });

  factory Setup.fromJson(Map<String, dynamic> data) =>
      _$SetupFromJson(data);

  Map<String, dynamic> toJson() => _$SetupToJson(this);
}
