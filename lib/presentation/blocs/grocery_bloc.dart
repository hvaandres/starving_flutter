import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';
import 'package:starving_shopping_flutter_app/domain/repository/local_storage_repository.dart';

import 'grocery_event.dart';
import 'grocery_state.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  final LocalStorageRepository localStorageRepository;

  GroceryBloc({required this.localStorageRepository}) : super(const GroceryLoading()) {
    on<LoadGroceries>(onLoadGroceries);
    on<AddGrocery>(onAddGrocery);
  }

  FutureOr<void> onLoadGroceries(LoadGroceries event, Emitter<GroceryState> emit) async {
    emit(const GroceryLoading());
    
    try {
      Future.delayed(const Duration(seconds: 2));
      final groceryList = await localStorageRepository.getAllGroceries();

      if (groceryList.isEmpty) {
        emit(const GroceryLoadedEmpty());
        return;
      } else {
        emit(GroceryLoadedNotEmpty(groceryList));
      }
    } catch (e) {
      emit(GroceryError(e.toString()));
    }
  }

  FutureOr<void> onAddGrocery(AddGrocery event, Emitter<GroceryState> emit) async {
    emit(const GroceryLoading());
    
    try {
      final grocery = Grocery(name: event.groceryName);
      await localStorageRepository.putGrocery(grocery);
      final groceryList = await localStorageRepository.getAllGroceries();
      emit(GroceryLoadedNotEmpty(groceryList));
    } catch (e) {
      emit(GroceryError(e.toString()));
    }
  }
}
