import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';
import 'package:starving_shopping_flutter_app/domain/repository/local_storage_repository.dart';
import 'package:starving_shopping_flutter_app/presentation/provider/storage/local_storage_provider.dart';

final groceryProvider =
  StateNotifierProvider<GroceryStorageNotifier, List<Grocery>>((ref) {
    final localStorageRepository = ref.watch(localStorageRepositoryProvider);
    return GroceryStorageNotifier(localStorageRepository: localStorageRepository);
  });

class GroceryStorageNotifier extends StateNotifier<List<Grocery>> {

  final LocalStorageRepository localStorageRepository;

  GroceryStorageNotifier({
    required this.localStorageRepository
  }) : super([]);

  Future<List<Grocery>> getGroceries() async {
    final groceries = await localStorageRepository.getAllGroceries();

    state = [...state, ...groceries];

    return groceries;
  }

  Future<void> registerCard({required String nameGrocery}) async {
    final grocery = Grocery(name: nameGrocery);

    final groceryId = await localStorageRepository.putGrocery(grocery);

    if (groceryId != null) {
      final isGroceryInList = state.any((item) => item.id == groceryId);

      if (!isGroceryInList) {
        state = [...state, grocery];
      } else {
        state.map((item) {
          if (item.id == groceryId) {
            return grocery.copyWith(id: groceryId);
          } else {
            return item;
          }
        }).toList();
      }
    }
  }
}
