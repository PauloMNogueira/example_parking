import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/events/events_controller.dart';

class EventBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventsController(Get.find()));
  }
}
