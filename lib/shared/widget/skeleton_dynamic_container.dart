import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/dynamic_card.dart';

class SkeletonDynamicContainer extends StatelessWidget {
  final bool isVisibleSkeleton;
  final Widget? topWidget;
  final Widget? middleWidget;
  final Widget? bottomWidget;

  const SkeletonDynamicContainer({
    super.key,
    required this.isVisibleSkeleton,
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
                    height: size.height * 0.25,
                    child: Image(
                      image: AssetImage('assets/images/img_meet.png'),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  DynamicCard(
                    description: 'Begin by adding groceries you think would be perfect for the week!',
                  )
                ],
              ),

            ),

        if (bottomWidget != null) bottomWidget!,
      ],
    );
  }
}
