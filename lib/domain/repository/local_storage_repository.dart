import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

abstract class LocalStorageRepository {
  Future<List<Grocery>> getAllGroceries();
  Future<int?> putGrocery(Grocery grocery);
}
