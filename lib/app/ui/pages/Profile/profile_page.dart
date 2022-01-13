import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:login_test/app/features/Profile/profile_binding.dart';
import 'package:login_test/app/route/app_pages.dart';
import 'package:login_test/app/route/page_builder.dart';
import 'package:login_test/app/ui/pages/Profile/profile_controller.dart';

class ProfilePage extends AppBasePage<ProfileController> {
  @override
  final String routeName = AppPages.home;

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Bindings createBindings() => ProfileBinding();

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: const ColorScheme.light().primary,
        ),
        body: Text("New Page"));
  }
}
