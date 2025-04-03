import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

class ItemsListMiddleScreen extends StatelessWidget {

  final List<Grocery> groceryList;

  const ItemsListMiddleScreen({
    super.key,
    required this.groceryList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryList.length,
      itemBuilder: (context, index) {
        final grocery = groceryList[index];
        
        // ! WIP ListTile
        return ListTile(
          title: Text(
            grocery.name,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
