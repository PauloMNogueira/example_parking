import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/navigator.dart';
import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/theme/theme.dart';

class SetupController extends GetxController {
  SetupController(this._nav);
  final String name = "PAULO";
  final AppNavigator _nav;
  void goToHome() async {
    await _nav.to(AppPages.qrScan) as Result<dynamic>?;
  }

  @override
  void onReady() {
    Get.changeTheme(AppTheme.get().copyWith(
        colorScheme: ColorScheme.light(primary: Colors.pink.shade100)));
    Timer(3.seconds, () => {goToHome()});
  }
}
