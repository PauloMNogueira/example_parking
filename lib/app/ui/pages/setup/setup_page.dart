import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:login_test/app/bindings/setup_binding.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/pages/setup/setup_controller.dart';

class SetupPage extends AppBasePage<SetupController> {
  @override
  final String routeName = AppPages.setup;

  const SetupPage({Key? key}) : super(key: key);

  @override
  Bindings createBindings() => SetupBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 64,
          width: 64,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
