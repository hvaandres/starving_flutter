import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_event.freezed.dart';

@freezed
class GroceryEvent with _$GroceryEvent {
    const factory GroceryEvent.loadGroceries() = LoadGroceries;
    const factory GroceryEvent.addGrocery(String groceryName) = AddGrocery;
}
