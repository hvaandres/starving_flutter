import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  final String pathImage;
  const CustomAssetImage({
    super.key,
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return SizedBox(
      height: size.height * 0.35,
      child: Image(
        image: AssetImage(pathImage),
      ),
    );
  }
}
