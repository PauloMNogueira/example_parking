import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:login_test/app/bindings/home_binding.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/pages/home/home_controller.dart';
import 'package:login_test/app/ui/pages/home/ticket_widget.dart';

class HomePage extends AppBasePage<HomeController> {
  @override
  final String routeName = AppPages.home;

  const HomePage({Key? key}) : super(key: key);

  @override
  Bindings createBindings() => HomeBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const ColorScheme.light().primary,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ShowTicketWidget(),
          TextButton(
              onPressed: controller.goToQRScanner,
              child: const Text("Ir para QRScan"))
        ],
      )),
    );
  }
}
