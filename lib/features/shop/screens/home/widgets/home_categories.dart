import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget.dart/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            onTap: () {},
            title: 'Shoes Category',
          );
        },
      ),
    );
  }
}
