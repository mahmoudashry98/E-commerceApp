import 'package:ecommerce_app/features/onboarding/screens/onboarding.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
