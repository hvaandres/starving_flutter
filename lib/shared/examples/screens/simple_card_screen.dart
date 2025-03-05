import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class SimpleCardScreen extends StatelessWidget {
  const SimpleCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Card examples')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransparentSimpleCard(),
        ],
      ),
    );
  }
}
