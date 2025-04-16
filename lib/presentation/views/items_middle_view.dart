import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starving_shopping_flutter_app/presentation/bloc/grocery_bloc.dart';
import 'package:starving_shopping_flutter_app/presentation/bloc/grocery_state.dart';
import 'package:starving_shopping_flutter_app/presentation/views/items_list_middle_view.dart';

class ItemsMiddleView extends StatelessWidget {
  const ItemsMiddleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryBloc, GroceryState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loadedNotEmpty: (groceryList) {
            return ItemsListMiddleView(
              groceryList: groceryList,
            );
          },
          loadedEmpty: () => const Center(
            child: Text(
              'No groceries found',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          error:
              (message) => Center(
                child: Text(message, style: const TextStyle(color: Colors.red)),
              ),
        );
      },
    );
  }
}
