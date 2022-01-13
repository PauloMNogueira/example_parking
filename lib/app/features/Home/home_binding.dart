import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/Events/events_controller.dart';
import 'package:login_test/app/ui/pages/Home/home_controller.dart';
import 'package:login_test/app/ui/pages/Setup/setup_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(Get.find()));
    Get.lazyPut(() => SetupController(Get.find()));
    Get.lazyPut(() => EventsController(Get.find()));
  }
}
