import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

part 'grocery_state.freezed.dart';

@freezed
class GroceryState with _$GroceryState {
  const factory GroceryState.loading() = GroceryLoading;
  const factory GroceryState.loadedNotEmpty(List<Grocery> groceries) = GroceryLoadedNotEmpty;
  const factory GroceryState.loadedEmpty() = GroceryLoadedEmpty;
  const factory GroceryState.error(String message) = GroceryError;
}
