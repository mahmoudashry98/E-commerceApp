import 'package:ecommerce_app/features/personalization/screens/settings/widgets/setting_body.dart';
import 'package:flutter/material.dart';
import 'widgets/setting_header.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [SettingHeader(), AppSettingBody()],
        ),
      ),
    );
  }
}
