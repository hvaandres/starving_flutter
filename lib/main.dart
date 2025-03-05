import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/shared/examples/screens/examples_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ExamplesScreen(),
    );
  }
}
