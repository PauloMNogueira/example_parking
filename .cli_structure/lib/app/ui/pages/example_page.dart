import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/page_builder.dart';

class <<FEATURE_NAME>>Page extends AppBasePage<<<FEATURE_NAME>>Controller> {
  @override
  final String routeName = AppPages.home;

  const  <<FEATURE_NAME>>Page({Key? key}) : super(key: key);

  @override
  Bindings createBindings() => <<FEATURE_NAME>>Binding();

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text("<<FEATURE_NAME>>"),
        backgroundColor: const ColorScheme.light().primary,
      ),
      body: Text("New Page")
      );
  }
}
