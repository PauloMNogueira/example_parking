import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/home/home_controller.dart';
import 'package:login_test/app/ui/pages/setup/setup_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(Get.find()));
    Get.lazyPut(() => SetupController(Get.find()));
  }
}
