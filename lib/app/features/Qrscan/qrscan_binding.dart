import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/Qrscan/qrscan_controller.dart';

class QrscanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrscanController(Get.find()));
  }
}
