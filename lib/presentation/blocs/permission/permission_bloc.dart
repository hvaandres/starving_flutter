import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:starving_shopping_flutter_app/code/di/injector.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/permission/permission_event.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/permission/permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  PermissionBloc() : super(PermissionInitial()) {
    on<RequestNotificationPermission>((event, emit) async {
      if (Platform.isIOS) {
        final bool? result = await getIt<FlutterLocalNotificationsPlugin>()
            .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin
            >()
            ?.requestPermissions(alert: true, badge: true, sound: true);
        if (result != null && result) {
          emit(PermissionGranted());
        } else {
          emit(PermissionDeniedGoToSettings());
        }
      } else if (Platform.isAndroid) {
        emit(PermissionDenied());
      }
    });
  }
}
