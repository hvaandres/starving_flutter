import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class CustomEditTextScreen extends StatefulWidget {
  const CustomEditTextScreen({super.key});

  @override
  State<CustomEditTextScreen> createState() => _CustomEditTextScreenState();
}

class _CustomEditTextScreenState extends State<CustomEditTextScreen> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EditText examples')),
      body: Column(children: [CustomEditText(textController: textController)]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final textFromController = textController.text;
              return AlertDialog(
                content: Text('Your content is: $textFromController'),
              );
            },
          );
        },
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
