import 'package:starving_shopping_flutter_app/domain/grocery.dart';

abstract class LocalStorageDatasource {
  Future<List<Grocery>> getAllGroceries();
  Future<void> putGrocery(Grocery grocery);
}
