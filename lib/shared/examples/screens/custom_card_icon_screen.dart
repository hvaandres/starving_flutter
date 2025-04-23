import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart'
    show CustomCardIcon;

class CustomCardIconScreen extends StatelessWidget {
  const CustomCardIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Card Icon examples')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCardIcon(
            iconData: Icons.notifications,
            label: 'Card with Icon',
            cardBackgroundColor: Colors.grey[180],
            textColor: context.textCardIconColor,
            circleAvatarColor: Colors.black,
            onPressed: () => showSnackBar(context, 'Card with Icon'),
          ),

          const CustomCardIcon(
            label: 'Card without Icon',
            cardBackgroundColor: Colors.blueGrey,
            textColor: Colors.white,
          ),

          CustomCardIcon(
            iconData: Icons.notifications,
            label: 'Card with Icon color',
            cardBackgroundColor: Colors.grey[180],
            textColor: context.textCardIconColor,
            circleAvatarColor: context.textCardIconColor,
            iconColor: Colors.white,
            onPressed: () => showSnackBar(context, 'Card with Icon color'),
          ),
        ],
      ),
    );
  }

  // method to show native snackbar
  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
    );
  }
}
