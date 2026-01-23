import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:starving_shopping_flutter_app/domain/datasource/local_preferences_datasource.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/preference/preferences_event.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/preference/preferences_state.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, TimeNotificationState> {
  final LocalPreferencesDatasource localPreferencesDatasource;

  PreferencesBloc(this.localPreferencesDatasource) : super(TimeNotificationInitial()) {
    on<SaveTimeNotificationPreferences>((event, emit) async {
      await localPreferencesDatasource.saveTimeNotification(event.timeNotificationValue);
      emit(
        TimeNotificationLoaded(event.timeNotificationValue)
      );
    });

    on<LoadTimeNotificationPreferences>((event, emit) {
      final timeNotification = localPreferencesDatasource.getTimeNotification();
      emit(
          TimeNotificationLoaded(timeNotification)
        );
    });
  }
}