abstract class LocalPreferencesRepository {
  Future<void> saveTimeNotification(String notificationTime);
  String? getTimeNotification();
}