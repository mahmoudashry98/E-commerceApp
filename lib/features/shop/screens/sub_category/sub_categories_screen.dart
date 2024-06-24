import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/app_product_card_horizontal.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/app_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const AppRoundedImage(
                  width: double.infinity,
                  imageUrl: ImageStrings.promoBanner3,
                  applyImageRadius: true),
              const SizedBox(height: AppSize.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  SectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: AppSize.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: AppSize.spaceBtwItems,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) =>
                          const AppProductCardHorizontal(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
