import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/events/events_controller.dart';

class <<FEATURE_NAME>>Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => <<FEATURE_NAME>>Controller(Get.find()));
  }
}
