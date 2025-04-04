import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:starving_shopping_flutter_app/domain/datasource/local_storage_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

class IsarDatasource extends LocalStorageDatasource {
  late Future<Isar> db;
  
  IsarDatasource() {
    db = _openDB();
  }

  @override
  Future<List<Grocery>> getAllGroceries() async {
    final isar = await db;
    return isar.groceries.where().findAll();
  }
  
  @override
  Future<int?> putGrocery(Grocery grocery) async {
    final isar = await db;
    return await isar.writeTxn(() async {
      final id = await isar.groceries.put(grocery);
      return id;
    });
  }

  Future<Isar> _openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [GrocerySchema],
        //! WIP recover from env
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
