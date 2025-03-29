import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/config/theme/color_manager.dart';

import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorManager = ColorManager(context: context);
    final primaryBackgroundColor = colorManager.primaryBackgroundColor();
    final primaryContrastColor = colorManager.primaryContrastColor();

    return SkeletonDynamicContainer(
      containerColor: primaryBackgroundColor,
      dynamicCardColor: colorManager.backgroundSecondaryColor(),
      isVisibleSkeleton: true,
      descriptionText:
          'Star by adding the groceries you\'ll need for the week, and be sure to select the items on this screen to move them to the Today\'s tab!',
      nameSkeletonImage: 'items_screen_resource.png',
      topWidget: ParagraphCard(
        title: 'My groceries',
        description:
            'Never forget your weekly needs! Add groceries and select items to move them to the Todas\'s tab.',
        backgroundColor: primaryBackgroundColor,
        paragraphColor: primaryContrastColor,
      ),
      bottomWidget: SolidButton(
        labelButton: 'Add new item',
        colorButton: primaryContrastColor,
        textColor: primaryBackgroundColor,
        onTap: () {
          //! open bottomsheet
        },
      ),
    );
  }
}
