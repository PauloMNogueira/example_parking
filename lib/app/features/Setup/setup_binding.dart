import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/Setup/setup_controller.dart';

class SetupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetupController(Get.find()));
  }
}
