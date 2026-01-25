abstract class TimeNotificationState {}

class TimeNotificationInitial extends TimeNotificationState {}

class TimeNotificationLoaded extends TimeNotificationState {
  final String? timeNotificationValue;
  final String lastUpdatedValue;

  TimeNotificationLoaded(
    this.timeNotificationValue,
    this.lastUpdatedValue,
  );
}
