import 'package:ecommerce_app/common/widgets/custom_shapes/contianers/rounded_container.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billind_amout_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_code.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/helpers/helper_funcation.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBarWidget(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const AppCartItems(showAddRemoveButtons: false),
              const SizedBox(height: AppSize.spaceBtwSections),
              const AppCouponCode(),
              const SizedBox(height: AppSize.spaceBtwSections),
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSize.md),
                backgroundColor: dark ? AppColors.dark : AppColors.white,
                child: const Column(
                  children: [
                    TBillingAmountSection(),
                    Divider(),
                    TBillingPaymentSection(),
                    TBillingAddressSection()
                  ],
                ),
              )

              /// Coupon TextField
            ],
          ),
        ),
      ),
     bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(AppSize.defaultSpace),
  child: ElevatedButton(
    onPressed: () => Get.to(
      () => SuccessScreen(
        image: ImageStrings.successfulPaymentIcon,
        title: 'Payment Success!',
        subTitle: 'Your item will be shipped soon!',
        onPressed: () => Get.offAll(() => const NavMenuScreen()),
      ), // SuccessScreen
    ),
    child: const Text('Checkout (\$256.0)'),
  ), // ElevatedButton
), // Padding
    );
  }
}
