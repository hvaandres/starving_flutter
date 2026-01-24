abstract class LocalPreferencesRepository {
  Future<void> saveTimeNotification(String notificationTime);
  String? getTimeNotification();

  Future<void> updateLastModified(int lastUpdate);
  int? getLastModified();
}