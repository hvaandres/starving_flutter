abstract class LocalPreferencesDatasource {
  Future<void> saveTimeNotification(String notificationTime);
  String? getTimeNotification();
}