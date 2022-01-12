import 'package:get/get.dart';
import 'package:login_test/app/route/navigator.dart';
import 'package:login_test/app/ui/pages/setup/setup_controller.dart';

class SetupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetupController(Get.find()));
  }
}
