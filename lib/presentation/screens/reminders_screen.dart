import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // remove when bloc is implemented
    final Map<String, IconData> optionIcons = {
      '8:00 a.m.': Icons.notifications,
      '12:00 p.m.': Icons.notifications,
      '6:00 a.m.': Icons.notifications,
      'Custom': Icons.watch_later,
    };

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
          //#region Reminder time selection
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose Reminder Time',
                style: TextStyle(
                  color: context.primaryContrastColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          CustomIconTextListCard(
            optionIcons: optionIcons,
            cardWidth: 120.0,
            cardHeight: 100.0,
            activeColor: Colors.blue,
            inactiveColor: context.primaryContrastColor,
            textColor: context.primaryContrastColor,
            backgroundColor: context.backgroundSecondaryColor,
            iconColor: context.primaryBackgroundColor,
            // update with bloc when it is implemented
            itemSelected: 3,
            onItemSelected: (index) {
              // wip
            },
          ),
          DynamicCard(
            icon: Icons.notifications_active,
            title: 'Current schedule',
            subtitle: 'Daily reminder scheduled for 8:00 a.m.',
            status: 'Active',
            description: 'Last modified: 1 second ago',
            iconColor: context.primaryContrastColor,
            subtitleColor: context.primaryContrastColor,
            titleColor: context.primaryContrastColor,
            cardColor: context.backgroundSecondaryColor,
          ),
          //#endregion
          DynamicCard(
            title: 'About Daily Reminders',
            description:
                'This app helps you stay on top of grocery shopping with gentle reminders, keeping your routine organized and mindful.',
            titleColor: context.primaryContrastColor,
            cardColor: context.backgroundSecondaryColor,
          ),
          // visible when reminders are not enabled
          CustomAssetImage(
            pathImage: getFullPathAsset('reminder_screen_resource.png'),
          ),
        ],
      ),
    );
  }
}
