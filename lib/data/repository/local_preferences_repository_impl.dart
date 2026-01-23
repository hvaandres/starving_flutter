import 'package:starving_shopping_flutter_app/domain/datasource/local_preferences_datasource.dart';
import 'package:starving_shopping_flutter_app/domain/repository/local_preferences_repository.dart';

class LocalPreferencesRepositoryImpl extends LocalPreferencesRepository {

  LocalPreferencesDatasource localPreferencesDatasource;

  LocalPreferencesRepositoryImpl({
    required this.localPreferencesDatasource
  });

  @override
  String? getTimeNotification() {
    return localPreferencesDatasource.getTimeNotification();
  }

  @override
  Future<void> saveTimeNotification(String notificationTime) async {
    await localPreferencesDatasource.saveTimeNotification(notificationTime);
  }
}