abstract class TimeNotificationState {}

class TimeNotificationInitial extends TimeNotificationState {}

class TimeNotificationLoaded extends TimeNotificationState {
  final String? timeNotificationValue;

  TimeNotificationLoaded(this.timeNotificationValue);
}