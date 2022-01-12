import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_test/app/ui/theme/colors.dart';

class AppTheme {
  static const _inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffB7B7B7)),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );

  static const _buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static ThemeData get() => ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.primary),
        backgroundColor: AppColors.background,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Rubik',
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          iconTheme: IconThemeData(color: AppColors.textColor),
          color: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          shadowColor: Colors.transparent,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: _buttonTextStyle,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            onPrimary: Colors.white,
            textStyle: _buttonTextStyle,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: _buttonTextStyle,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: _inputBorder,
          enabledBorder: _inputBorder,
          focusedBorder: _inputBorder,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      );
}
