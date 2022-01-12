import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/qrscan/qrscan_controller.dart';

class ShowTicketWidget extends GetView<QRScanController> {
  const ShowTicketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("Cartão válido:" + controller.ticketCode.value)],
      ),
    );
  }
}
