import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/config/theme/color_manager.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';

import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager(context: context);
    final primaryContrastColor = colorManager.primaryContrastColor();
    final backgroundSecondaryColor = colorManager.backgroundSecondaryColor();

    return SingleChildScrollView(
      child: Column(
        children: [
          ParagraphCard(
            title: 'Daily Reminders',
            description:
                'Set up gentle daily reminders to make sure you don\'t forget to purchase any of your groceries.',
            backgroundColor: colorManager.primaryBackgroundColor(),
            paragraphColor: primaryContrastColor,
          ),
          CustomCardIcon(
            label: 'Enable Daily Reminders',
            iconData: Icons.notifications_off,
            iconColor: Colors.white,
            textColor: primaryContrastColor,
            circleAvatarColor: Colors.grey,
            cardBackgroundColor: backgroundSecondaryColor,
          ),
          DynamicCard(
            title: 'About Daily Reminders',
            description:
                'This app helps you stay on top of grocery shopping with gentle reminders, keeping your routine organized and mindful.',
            titleColor: primaryContrastColor,
            cardColor: backgroundSecondaryColor,
          ),
          CustomAssetImage(
            pathImage: getFullPathAsset('reminder_screen_resource.png'),
          ),
        ],
      ),
    );
  }
}
