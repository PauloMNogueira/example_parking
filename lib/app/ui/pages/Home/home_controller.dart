import 'package:get/get.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/navigator.dart';

class HomeController extends GetxController {
  HomeController(this._nav);
  final AppNavigator _nav;

  void goToQRScanner() {
    _nav.to(AppPages.qrScan);
  }
}
