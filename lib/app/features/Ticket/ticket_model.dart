import 'package:json_annotation/json_annotation.dart';
part 'ticket_model.g.dart';

@JsonSerializable()
class TicketResponse {
  final String id;
  final String code;
  final DateTime checkin;
  final DateTime checkout;
  final double amount;

  TicketResponse({
    required this.id,
    required this.code,
    required this.checkin,
    required this.checkout,
    required this.amount,
  });

  factory TicketResponse.fromJson(Map<String, dynamic> data) =>
      _$TicketResponseFromJson(data);

  Map<String, dynamic> toJson() => _$TicketResponseToJson(this);
}
