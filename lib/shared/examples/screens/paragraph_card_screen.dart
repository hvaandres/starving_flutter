import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class ParagraphCardScreen extends StatelessWidget {
  const ParagraphCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paragraph Card examples')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ParagraphCard(),
        ],
      ),
    );
  }
}
