import 'package:flutter/material.dart';

class SkeletonDynamicContainer extends StatelessWidget {
  final Widget? topWidget;
  final Widget? middleWidget;
  final Widget? bottomWidget;
  final Color containerColor;

  const SkeletonDynamicContainer({
    super.key,
    this.topWidget,
    this.middleWidget,
    this.bottomWidget,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerColor,
      child: Column(
        children: [
          if (topWidget != null) topWidget!,
      
          (middleWidget != null)
              ? Expanded(child: middleWidget!)
              : const Placeholder(),
      
          if (bottomWidget != null) bottomWidget!,
        ],
      ),
    );
  }
}
