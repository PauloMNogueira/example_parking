import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';
import 'package:login_test/app/features/Qrscan/qrscan_binding.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/pages/Qrscan/qrscan_controller.dart';

class QrscanPage extends AppBasePage<QrscanController> {
  @override
  final String routeName = AppPages.qrScan;

  const QrscanPage({Key? key}) : super(key: key);

  @override
  Bindings createBindings() => QrscanBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: controller.goToHome, icon: Icon(Icons.home))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              autofocus: true,
              autovalidateMode: AutovalidateMode.always,
              controller: controller.typeCodeController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (v) => controller.onCodeSubmited(),
              decoration: const InputDecoration(
                errorStyle: TextStyle(),
                label: Text("Digite o código"),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                errorMaxLines: 2,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(20),
              ],
            ),
            Obx(
              () => Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: !controller.ticketCode.value.isEmpty
                      ? Column(
                          children: [
                            Text("Ticket Validado"),
                            Text("Código:" + controller.ticketCode.value),
                            Text("ID:" + controller.ticketId.value),
                            Text("Validado as: " +
                                DateFormat("dd/MM/yyyy HH:mm:ss")
                                    .format(controller.ticketCheckin.value)
                                    .toString()),
                            Text("Valido até: " +
                                DateFormat("dd/MM/yyyy HH:mm:ss")
                                    .format(controller.ticketCheckout.value)
                                    .toString())
                          ],
                        )
                      : Text(""),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
