// Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
import 'package:ecommerce_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:ecommerce_app/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? TCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AppHelperFunctions.getColor(text)!)
            : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        padding: isColor ? EdgeInsets.zero : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? AppHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
