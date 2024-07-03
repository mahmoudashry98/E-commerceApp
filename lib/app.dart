import 'package:ecommerce_app/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'utils/constants/app_colors.dart';
import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),

      home: const Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
            child: CircularProgressIndicator(
          color: AppColors.white,
        )),
      ),
    );
  }
}
