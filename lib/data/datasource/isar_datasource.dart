import 'package:starving_shopping_flutter_app/domain/datasource/local_storage_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/entity/grocery.dart';

class IsarDatasource extends LocalStorageDatasource {
  
  IsarDatasource();

  @override
  Future<List<Grocery>> getAllGroceries() async {
    return [];
  }
  
  @override
  Future<int?> putGrocery(Grocery grocery) async {
    return 0;
  }
}
