import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/config/constant/environment.dart';
import 'package:starving_shopping_flutter_app/presentation/screens/main_screen.dart';
import 'package:starving_shopping_flutter_app/shared/examples/screens/examples_screen.dart';

void main() async {
  await Environment.initEnvironment();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          Environment.wantSeeExamples
              ? const ExamplesScreen()
              : const MainScreen(),
    );
  }
}
