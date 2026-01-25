import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:starving_shopping_flutter_app/data/database/grocery_database.dart';
import 'package:starving_shopping_flutter_app/data/datasource/isar_datasource.dart';
import 'package:starving_shopping_flutter_app/data/datasource/preferences_datasource.dart';
import 'package:starving_shopping_flutter_app/data/repository/local_storage_repository_impl.dart';
import 'package:starving_shopping_flutter_app/domain/datasource/local_storage_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/repository/local_storage_repository.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/blocs.dart';
import 'package:starving_shopping_flutter_app/presentation/service/android_settings_service.dart';

final getIt = GetIt.instance;

void setupLocator() async {
  getIt.registerLazySingleton<FlutterLocalNotificationsPlugin>(
    () => FlutterLocalNotificationsPlugin(),
  );
  getIt.registerLazySingleton<AndroidSettingsService>(
    () => AndroidSettingsService(),
  );
  getIt.registerLazySingleton<GroceryDatabase>(() => GroceryDatabase());

  getIt.registerLazySingleton<LocalStorageDatasource>(
    () => IsarDatasource(groceryDatabase: getIt<GroceryDatabase>()),
  );

  getIt.registerLazySingleton<LocalStorageRepository>(
    () => LocalStorageRepositoryImpl(
      localStorageDatasource: getIt<LocalStorageDatasource>(),
    ),
  );
  final sharedpreferences = await SharedPreferences.getInstance();
  final preferencesDatasource = PreferencesDatasource(sharedpreferences);

  // Blocs
  getIt.registerFactory(() => AlarmPermissionBloc());
  getIt.registerFactory<GroceryBloc>(
    () => GroceryBloc(localStorageRepository: getIt<LocalStorageRepository>()),
  );
  getIt.registerFactory(() => PermissionBloc());
  getIt.registerFactory(() => PreferencesBloc(preferencesDatasource));
}

Future<void> initializeNotifications() async {
  const DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      );

  const InitializationSettings initializationSettings = InitializationSettings(
    iOS: initializationSettingsDarwin,
  );

  await getIt<FlutterLocalNotificationsPlugin>().initialize(
    initializationSettings,
  );
}
