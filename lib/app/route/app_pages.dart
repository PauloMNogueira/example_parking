import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/pages/home/home_page.dart';
import 'package:login_test/app/ui/pages/qrscan/qrscan_page.dart';
import 'package:login_test/app/ui/pages/setup/setup_page.dart';

abstract class AppPages {
  static const setup = "/setup";
  static const home = "/";
  static const qrScan = "/qr_scan";
  static final pages = [
    AppPageBuilder(const SetupPage()),
    AppPageBuilder(const HomePage()),
    AppPageBuilder(QRScanPage())
  ];
}
