import 'package:ecommerce_app/features/auth/screens/login/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index When Page Scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  /// Jump To The Specific Dot Selected Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & Jump To Next Page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      if (kDebugMode) {
        print(
            '===================== GET STORAGE ========================================== GET STORAGE =====================');
        print(storage.read('IsFirstTime'));
      }
      storage.write('IsFirstTime', false);
      if (kDebugMode) {
        print(
            '===================== GET STORAGE ========================================== GET STORAGE =====================');
        print(storage.read('IsFirstTime'));
      }
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.animateToPage(currentPageIndex.value,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  /// Update Current Index & Jump To The Last Page
  void skipPage() {
    Get.to(const LoginScreen());
  }

  @override
  void dispose() {
    dispose();
    super.dispose();
  }
}
