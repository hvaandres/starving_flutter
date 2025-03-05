import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/shared/examples/screens/custom_card_icon_screen.dart';

typedef ItemExample = ({String name, int idItem});

class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itemExampleList = <ItemExample>[];
    itemExampleList.add((name: 'Custom Card Icon', idItem: 1));

    return Scaffold(
      appBar: AppBar(title: const Text('Examples')),
      body: ListView.builder(
        itemCount: itemExampleList.length,
        itemBuilder: (context, index) {
          final item = itemExampleList[index];
          return ListTile(
            title: Text(item.name),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Widget? screen;
              switch (item.idItem) {
                case 1:
                  screen = const CustomCardIconScreen();
                  break;
                default:
              }

              if (screen != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen!),
                );
              }
            },
          );
        },
      ),
    );
  }
}
