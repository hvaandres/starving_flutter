import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart' show CustomAssetImage;

class CustomAssetImageScreen extends StatelessWidget {
  const CustomAssetImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paragraph Card examples')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAssetImage(
              pathImage: 'assets/images/today_screen_resource.png',
            ),
            SizedBox(
              width: double.infinity,
              height: 10,
            ),
            CustomAssetImage(
              pathImage: 'assets/images/reminder_screen_resource.png',
            ),
          ],
        ),
      ),
    );
  }
}
