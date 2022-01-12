import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF02BDEB);
  static const background = Color(0xffF8F9FB);
  static const textColor = Colors.black;

  static Color bestTextColorFor(Color c) =>
      c.computeLuminance() < 0.5 ? Colors.white : Colors.black;
}
