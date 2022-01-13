import 'package:get/get.dart';

class <<FEATURE_NAME>>Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => <<FEATURE_NAME>>Controller(Get.find()));
  }
}
