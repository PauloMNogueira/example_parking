import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_test/app/data/model/ticket.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/navigator.dart';

class QRScanController extends GetxController {
  final AppNavigator _nav;
  late TicketResponse ticket;
  final ticketCode = "".obs;
  final ticketId = "".obs;
  final ticketCheckout = DateTime.utc(2022).obs;
  final ticketCheckin = DateTime.utc(2022).obs;
  QRScanController(this._nav);
  final bool loading = true;
  final typeCodeController = TextEditingController();

  void onCodeSubmited() {
    final code = typeCodeController.text;
    _getTicketInfo(code);
  }

  void goToHome() {
    _nav.to(AppPages.home);
  }

  void setSuccessMessage() {
    _nav.hideLoader();
    _nav.showAppBottomSheet(
      const Scaffold(
        body: Center(
          child: Text("Salvo com sucesso"),
        ),
      ),
    );
    ticketCode.value = ticket.code;
    ticketId.value = ticket.id;
    ticketCheckout.value = ticket.checkout;
    ticketCheckin.value = ticket.checkin;
  }

  void _getTicketInfo(String code) {
    _nav.showLoader();
    Timer(4.seconds, () => setSuccessMessage());
    ticket = TicketResponse.fromJson({
      "id": "2",
      "code": code,
      "checkin": "2022-01-01T18:25:43-03:00",
      "checkout": "2022-01-01T21:25:43-03:00",
      "amount": 15.0
    });
  }
}
