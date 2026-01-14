import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

abstract class GroceryState {}

class GroceryLoading extends GroceryState {}

class GroceryLoadedNotEmpty extends GroceryState {
  final List<Grocery> groceries;

  GroceryLoadedNotEmpty(this.groceries);
}

class GroceryLoadedEmpty extends GroceryState {}

class GroceryError extends GroceryState {
  final String message;

  GroceryError(this.message);
}
