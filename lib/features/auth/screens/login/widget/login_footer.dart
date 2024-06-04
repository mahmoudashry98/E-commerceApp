import 'package:ecommerce_app/common/widgets/social_media_section.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SocialMediaSection(
        testBtwDivider: AppStrings.orSignInWith.capitalize!,
        googleIcon: ImageStrings.googleIcon,
        facebookIcon: ImageStrings.facebookIcon,
      ),
    ]);
  }
}
