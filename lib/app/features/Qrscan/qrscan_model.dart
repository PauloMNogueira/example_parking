import 'package:json_annotation/json_annotation.dart';
part 'qrscan_model.g.dart';

@JsonSerializable()
class Qrscan {
  final String id;
  final String name;

  Qrscan(
      {required this.id,
      required this.name,
      });

  factory Qrscan.fromJson(Map<String, dynamic> data) =>
      _$QrscanFromJson(data);

  Map<String, dynamic> toJson() => _$QrscanToJson(this);
}
