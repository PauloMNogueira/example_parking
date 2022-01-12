import 'package:get/get.dart';
import 'package:login_test/app/route/navigator.dart';

class CoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppNavigator(), permanent: true);
  }
}
