abstract class GroceryEvent {}

class LoadGroceries extends GroceryEvent {}

class AddGrocery extends GroceryEvent {
  final String groceryName;

  AddGrocery(this.groceryName);
}
