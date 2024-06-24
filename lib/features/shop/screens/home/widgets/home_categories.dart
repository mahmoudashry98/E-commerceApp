import 'package:ecommerce_app/features/shop/screens/sub_category/sub_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widget.dart/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            onTap: () => Get.to(const SubCategoriesScreen()),
            title: 'Shoes Category',
            
          );
        },
      ),
    );
  }
}
