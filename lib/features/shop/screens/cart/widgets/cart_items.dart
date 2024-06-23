import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class AppCartItems extends StatelessWidget {
  final bool showAddRemoveButtons;
  const AppCartItems({super.key, this.showAddRemoveButtons = true});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: AppSize.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const AppCardItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: AppSize.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    AppProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256')
              ],
            )
        ],
      ),
    );
  }
}
