import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/methods/url.dart';

class OpenUrlScreen extends StatelessWidget {
  const OpenUrlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open url'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: openUrl("https://github.com/hvaandres"),
          child: const Text('Show main homepage'),
        ),
      ),
    );
  }
}
