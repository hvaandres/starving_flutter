import 'package:starving_shopping_flutter_app/data/database/grocery_database.dart';
import 'package:starving_shopping_flutter_app/domain/datasource/local_storage_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

class IsarDatasource extends LocalStorageDatasource {
  final GroceryDatabase groceryDatabase;
  
  IsarDatasource({required this.groceryDatabase});

  @override
  Future<List<Grocery>> getAllGroceries() async {
    return await groceryDatabase.getGroceries();
  }
  
  @override
  Future<int> insertGrocery(Grocery grocery) async {
    return await groceryDatabase.insertGrocery(grocery);
  }
}
