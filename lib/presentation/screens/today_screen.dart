import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonDynamicContainer(
      isVisibleSkeleton: true,
      descriptionText:
          'Take a little of you time to check and review your grocery list!',
      topWidget: ParagraphCard(
        title: 'My groceries',
        description:
            'Before you go, double-check your list! Swipe right to remove unpurchased items - they\'ll stay in the items tab.',
      ),
      bottomWidget: SolidButton(
        labelButton: 'Log',
        colorButton: Colors.black,
        onTap: () {
          //! move to item screen
        },
      ),
    );
  }
}
