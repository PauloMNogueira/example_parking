// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketResponse _$TicketResponseFromJson(Map<String, dynamic> json) =>
    TicketResponse(
      id: json['id'] as String,
      code: json['code'] as String,
      checkin: DateTime.parse(json['checkin'] as String),
      checkout: DateTime.parse(json['checkout'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$TicketResponseToJson(TicketResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'checkin': instance.checkin.toIso8601String(),
      'checkout': instance.checkout.toIso8601String(),
      'amount': instance.amount,
    };
