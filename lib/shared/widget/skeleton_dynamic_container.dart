import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/dynamic_card.dart';

class SkeletonDynamicContainer extends StatelessWidget {
  final bool isVisibleSkeleton;
  final Widget? topWidget;
  final Widget? middleWidget;
  final Widget? bottomWidget;

  final String descriptionText;

  const SkeletonDynamicContainer({
    super.key,
    required this.isVisibleSkeleton,
    required this.descriptionText,
    this.topWidget,
    this.middleWidget,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return Column(
      children: [
        if (topWidget != null) topWidget!,

        (!isVisibleSkeleton && middleWidget != null)
            ? Expanded(child: middleWidget!)
            : Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.35,
                    child: Image(
                      image: AssetImage('assets/images/today_screen_resource.png'),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  DynamicCard(
                    description: descriptionText,
                  ),
                ],
              ),
            ),

        if (bottomWidget != null) bottomWidget!,
      ],
    );
  }
}
