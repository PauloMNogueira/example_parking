import 'package:json_annotation/json_annotation.dart';
part 'events_model.g.dart';

@JsonSerializable()
class EventResponse {
  final String id;
  final String name;
  final String imageUrl;
  final bool isFav;
  final double points;
  final DateTime date;

  EventResponse(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isFav,
      required this.points,
      required this.date});

  factory EventResponse.fromJson(Map<String, dynamic> data) =>
      _$EventResponseFromJson(data);

  Map<String, dynamic> toJson() => _$EventResponseToJson(this);
}
