import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:login_test/app/bindings/core_binding.dart';
import 'package:login_test/app/route/app_pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      locale: const Locale("pt", "BR"),
      initialBinding: CoreBinding(),
      initialRoute: AppPages.setup,
      getPages: AppPages.pages,
    );
  }
}
