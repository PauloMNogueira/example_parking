import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/Events/events_controller.dart';

class EventsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventsController(Get.find()));
  }
}
