import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/shared/widget/solid_button.dart';

class SimpleFormBottomsheetScreen extends StatelessWidget {
  const SimpleFormBottomsheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Form Bottomsheet"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('See Simple Form Bottomsheet'),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Wrap(
                    children: [
                      // WIP replace with EditText
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: Text('What groceries do you need to purchased'),
                      ),
                      SolidButton(
                        labelButton: 'Add',
                        colorButton: Colors.black,
                        textColor: Colors.white,
                        onTap:() {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
