import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommerce_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  ThemeApp._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TextThemeApp.lightTextTheme,
    chipTheme: ChipThemeApp.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarThemeApp.lightAppBarTheme,
    checkboxTheme: CheckboxThemeApp.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeApp.lightBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeApp.lightElevatedButtonTheme,
    outlinedButtonTheme: OutLinedButtonThemeApp.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFieldThemeApp.lightInputDecorationTheme,
    
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TextThemeApp.darkTextTheme,
    chipTheme: ChipThemeApp.darkChipTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: AppBarThemeApp.darkAppBarTheme,
    checkboxTheme: CheckboxThemeApp.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeApp.darkBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeApp.darkElevatedButtonTheme,
    outlinedButtonTheme: OutLinedButtonThemeApp.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFieldThemeApp.darkInputDecorationTheme,
  );
}
