import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppNavigator {
  Future<T?>? to<T>(String route, {dynamic args}) {
    return Get.toNamed<T>(route, arguments: args);
  }

  Future<T?>? offTo<T>(String route, {dynamic args}) {
    return Get.offNamed(route, arguments: args);
  }

  void backTo(String r) {
    // ignore: unrelated_type_equality_checks
    Get.until((route) => route == r);
  }

  void back<T>(T? result, {bool closeOverlays = false}) {
    Get.back(result: result, closeOverlays: closeOverlays);
  }

  static void exit() {
    SystemNavigator.pop();
    Get.back();
  }

  Future<dynamic> showSnackbar(String message,
      {String actionText = "OK", VoidCallback? action}) async {
    await Future.delayed(10.milliseconds);
    Get.showSnackbar(GetSnackBar(
      message: message,
      duration: 5.seconds,
      isDismissible: true,
      animationDuration: 250.milliseconds,
      mainButton: TextButton(
        onPressed: () {
          Get.back();
          action?.call();
        },
        child: Text(
          actionText,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }

  Future<T?> showAppBottomSheet<T>(
    Widget widget, {
    bool isDismissible = true,
    Color backgroundColor = Colors.white,
  }) async {
    return Get.bottomSheet<T>(
      widget,
      isScrollControlled: true,
      isDismissible: isDismissible,
      enableDrag: isDismissible,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
  }

  void showLoader() {
    Get.dialog(
      const Center(
        child: SizedBox(
          width: 32,
          height: 32,
          child: CircularProgressIndicator(),
        ),
      ),
      transitionDuration: 200.milliseconds,
      barrierDismissible: false,
    );
  }

  void showCustomDialog(Widget widget) => Get.dialog(widget);

  void hideLoader() => Get.back();
}
