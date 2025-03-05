import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/shared/examples/screens/screens.dart';

enum ItemExampleEnum { customCardIcon, simpleCard }

typedef ItemExample = ({String name, ItemExampleEnum idItem});

class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itemExampleList = <ItemExample>[];
    itemExampleList.add((
      name: 'Custom Card Icon',
      idItem: ItemExampleEnum.customCardIcon,
    ));
    itemExampleList.add((
      name: 'Simple Card',
      idItem: ItemExampleEnum.simpleCard,
    ));

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
              Widget screen;
              switch (item.idItem) {
                case ItemExampleEnum.customCardIcon:
                  screen = const CustomCardIconScreen();
                  break;
                case ItemExampleEnum.simpleCard:
                  screen = const SimpleCardScreen();
                  break;
              }

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
              );
            },
          );
        },
      ),
    );
  }
}
