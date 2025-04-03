import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starving_shopping_flutter_app/data/datasource/isar_datasource.dart';
import 'package:starving_shopping_flutter_app/data/repository/local_storage_repository_impl.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(
    localStorageDatasource: IsarDatasource()
  );
});
