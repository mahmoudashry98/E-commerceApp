import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/gird_layout.dart';
import '../products_card/app_product_card_vertical.dart';

class AppSortableProduct extends StatelessWidget {
  const AppSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort), hintText: 'Name'),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ), // DropdownButtonFormField
        const SizedBox(height: AppSize.spaceBtwSections),

        /// Products
        AppGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const AppProductCardVertical()),
      ],
    );
  }
}
