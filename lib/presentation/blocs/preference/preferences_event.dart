abstract class PreferencesEvent {}

class SaveTimeNotificationPreferences extends PreferencesEvent {
  final String timeNotificationValue;

  SaveTimeNotificationPreferences(this.timeNotificationValue);
}

class LoadTimeNotificationPreferences extends PreferencesEvent {}
