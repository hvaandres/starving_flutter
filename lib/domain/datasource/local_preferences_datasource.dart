abstract class LocalPreferencesDatasource {
  Future<void> saveTimeNotification(String notificationTime);
  String? getTimeNotification();

  Future<void> updateLastModified(int lastUpdate);
  int? getLastModified();
}
