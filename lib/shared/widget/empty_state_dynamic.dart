import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class EmptyStateDynamic extends StatelessWidget {
  final String? nameSkeletonImage;
  final String descriptionText;
  final Color dynamicCardColor;

  const EmptyStateDynamic({
    super.key,
    this.nameSkeletonImage,
    required this.descriptionText,
    required this.dynamicCardColor,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return Column(
      children: [
        CustomAssetImage(
          pathImage: getFullPathAsset(
            nameSkeletonImage ?? 'today_screen_resource.png',
          ),
        ),
        SizedBox(height: size.height * 0.05),

        if (descriptionText.isNotEmpty)
          DynamicCard(
            description: descriptionText,
            cardColor: dynamicCardColor,
          ),
      ],
    );
  }
}
