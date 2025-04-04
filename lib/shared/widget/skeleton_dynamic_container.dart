import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class SkeletonDynamicContainer extends StatelessWidget {
  final bool isVisibleSkeleton;
  final Widget? topWidget;
  final Widget? middleWidget;
  final Widget? bottomWidget;
  final String? nameSkeletonImage;

  final String descriptionText;
  final Color dynamicCardColor;
  final Color containerColor;

  const SkeletonDynamicContainer({
    super.key,
    required this.isVisibleSkeleton,
    required this.descriptionText,
    this.topWidget,
    this.middleWidget,
    this.bottomWidget,
    this.nameSkeletonImage,
    required this.dynamicCardColor,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return Container(
      color: containerColor,
      child: Column(
        children: [
          if (topWidget != null) topWidget!,
      
          (!isVisibleSkeleton && middleWidget != null)
              ? Expanded(child: middleWidget!)
              : Expanded(
                child: Column(
                  children: [
                    CustomAssetImage(
                      pathImage: getFullPathAsset(nameSkeletonImage ?? 'today_screen_resource.png'),
                    ),
                    SizedBox(height: size.height * 0.05),
      
                    if (descriptionText.isNotEmpty)
                      DynamicCard(
                        description: descriptionText,
                        cardColor: dynamicCardColor,
                      ),
                  ],
                ),
              ),
      
          if (bottomWidget != null) bottomWidget!,
        ],
      ),
    );
  }
}
