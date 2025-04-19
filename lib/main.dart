import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starving_shopping_flutter_app/code/di/injector.dart';

import 'package:starving_shopping_flutter_app/config/constant/environment.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/grocery_bloc.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/grocery_event.dart';
import 'package:starving_shopping_flutter_app/presentation/screens/main_screen.dart';
import 'package:starving_shopping_flutter_app/shared/examples/screens/examples_screen.dart';

void main() async {
  await Environment.initEnvironment();
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<GroceryBloc>()..add(const GroceryEvent.loadGroceries()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            Environment.wantSeeExamples
                ? const ExamplesScreen()
                : const MainScreen(),
      ),
    );
  }
}
