import 'package:starving_shopping_flutter_app/domain/datasource/local_storage_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';
import 'package:starving_shopping_flutter_app/domain/repository/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {

  final LocalStorageDatasource localStorageDatasource;

  LocalStorageRepositoryImpl({
    required this.localStorageDatasource
  });

  @override
  Future<List<Grocery>> getAllGroceries() {
    return localStorageDatasource.getAllGroceries();
  }

  @override
  Future<int?> putGrocery(Grocery grocery) {
    return localStorageDatasource.putGrocery(grocery);
  }
}
