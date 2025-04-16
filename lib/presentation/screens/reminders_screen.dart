import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ParagraphCard(
            title: 'Daily Reminders',
            description:
                'Set up gentle daily reminders to make sure you don\'t forget to purchase any of your groceries.',
            backgroundColor: context.primaryBackgroundColor,
            paragraphColor: context.primaryContrastColor,
          ),
          CustomCardIcon(
            label: 'Enable Daily Reminders',
            iconData: Icons.notifications_off,
            iconColor: Colors.white,
            textColor: context.primaryContrastColor,
            circleAvatarColor: Colors.grey,
            cardBackgroundColor: context.backgroundSecondaryColor,
          ),
          DynamicCard(
            title: 'About Daily Reminders',
            description:
                'This app helps you stay on top of grocery shopping with gentle reminders, keeping your routine organized and mindful.',
            titleColor: context.primaryContrastColor,
            cardColor: context.backgroundSecondaryColor,
          ),
          CustomAssetImage(
            pathImage: getFullPathAsset('reminder_screen_resource.png'),
          ),
        ],
      ),
    );
  }
}
