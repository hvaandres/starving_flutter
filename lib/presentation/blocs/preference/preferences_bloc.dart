import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:starving_shopping_flutter_app/domain/datasource/local_preferences_datasource.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/preference/preferences_event.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/preference/preferences_state.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, TimeNotificationState> {
  final LocalPreferencesDatasource localPreferencesDatasource;

  PreferencesBloc(this.localPreferencesDatasource) : super(TimeNotificationInitial()) {

    String formatPassedTime(DateTime savedTime) {
      final now = DateTime.now();
      final difference = now.difference(savedTime);

      final String message;
      if (difference.inSeconds < 60) {
        final seconds = difference.inSeconds;
        message = "$seconds ${ seconds == 1 ? 'second' : 'seconds' } ago";
      } else if (difference.inMinutes < 60) {
        final minutes = difference.inMinutes;
        message = "$minutes ${minutes == 1 ? 'minute' : 'minutes'} ago";
      } else if (difference.inHours < 24) {
        final hours = difference.inHours;
        message = "$hours ${ hours == 1 ? 'hour' : 'hours' } ago";
      } else if (difference.inDays < 24) {
        final days = difference.inDays;
        message = "$days ${ days == 1 ? 'day' : 'days' } ago";
      } else {
        message = "A long time ago";
      }
      return message;
    }

    on<SaveTimeNotificationPreferences>((event, emit) async {
      final dateTime = DateTime.now();
      int timestampUpdated = dateTime.millisecondsSinceEpoch ~/ 1000;

      await localPreferencesDatasource.saveTimeNotification(event.timeNotificationValue);
      await localPreferencesDatasource.updateLastModified(timestampUpdated);

      emit(
        TimeNotificationLoaded(event.timeNotificationValue, "1 second ago")
      );
    });

    on<LoadTimeNotificationPreferences>((event, emit) {
      final timeNotification = localPreferencesDatasource.getTimeNotification();
      final lastModified = localPreferencesDatasource.getLastModified();

      final millisecondsFixed = (lastModified ?? 0) * 1000;
      final savedTime = DateTime.fromMillisecondsSinceEpoch(millisecondsFixed);
      final dateFormatted = formatPassedTime(savedTime);

      emit(
          TimeNotificationLoaded(timeNotification, dateFormatted)
        );
    });
  }
}