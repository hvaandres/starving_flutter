import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

abstract class LocalStorageDatasource {
  Future<List<Grocery>> getAllGroceries();
  Future<int> insertGrocery(Grocery grocery);
}
