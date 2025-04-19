import 'package:get_it/get_it.dart';

import 'package:starving_shopping_flutter_app/data/datasource/isar_datasource.dart';
import 'package:starving_shopping_flutter_app/data/repository/local_storage_repository_impl.dart';
import 'package:starving_shopping_flutter_app/domain/datasource/local_storage_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/repository/local_storage_repository.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/grocery_bloc.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<LocalStorageDatasource>(
    () => IsarDatasource(),
  );

  getIt.registerLazySingleton<LocalStorageRepository>(
    () => LocalStorageRepositoryImpl(
      localStorageDatasource: getIt<LocalStorageDatasource>(),
    ),
  );

  getIt.registerFactory<GroceryBloc>(
    () => GroceryBloc(
      localStorageRepository: getIt<LocalStorageRepository>(),
    ),
  );
}
