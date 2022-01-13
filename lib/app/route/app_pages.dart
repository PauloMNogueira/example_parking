import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/pages/Home/home_page.dart';
import 'package:login_test/app/ui/pages/Qrscan/qrscan_page.dart';
import 'package:login_test/app/ui/pages/Setup/setup_page.dart';

abstract class AppPages {
  static const setup = "/setup";
  static const home = "/";
  static const qrScan = "/qr_scan";
  static final pages = [
    AppPageBuilder(const SetupPage()),
    AppPageBuilder(const HomePage()),
    AppPageBuilder(const QrscanPage())
  ];
}
