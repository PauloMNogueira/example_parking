import 'package:get/instance_manager.dart';
import 'package:login_test/app/ui/pages/qrscan/qrscan_controller.dart';

class QRScanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRScanController(Get.find()));
  }
}
