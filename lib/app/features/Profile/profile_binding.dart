import 'package:get/get.dart';
import 'package:login_test/app/ui/pages/Profile/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController(Get.find()));
  }
}
