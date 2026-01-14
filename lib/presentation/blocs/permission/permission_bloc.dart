import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:starving_shopping_flutter_app/code/di/injector.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/permission/permission_event.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/permission/permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  PermissionBloc() : super(PermissionInitial()) {
    Future<bool?> getResultIOSPermission() async {
      return await getIt<FlutterLocalNotificationsPlugin>()
          .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin
          >()
          ?.requestPermissions(alert: true, badge: true, sound: true);
    }

    on<CheckNotificationPermission>((event, emit) async {
      if (Platform.isIOS) {
        final bool? result = await getResultIOSPermission();
        if (result == true) {
          emit(PermissionGranted());
        } else {
          emit(PermissionDeniedStarted());
        }
      } else if (Platform.isAndroid) {
        final status = await Permission.notification.status;
        if (status == PermissionStatus.granted) {
          emit(PermissionGranted());
        } else {
          emit(PermissionDeniedStarted());
        }
      }
    });

    on<RequestNotificationPermission>((event, emit) async {
      if (Platform.isIOS) {
        final bool? result = await getResultIOSPermission();
        if (result == true) {
          emit(PermissionGranted());
        } else {
          emit(PermissionDeniedGoToSettings());
        }
      } else if (Platform.isAndroid) {
        final status = await Permission.notification.request();
        if (status == PermissionStatus.permanentlyDenied) {
          emit(PermissionDeniedPermanently());
        } else if (status == PermissionStatus.denied) {
          emit(PermissionDenied());
        } else {
          emit(PermissionGranted());
        }
      }
    });
  }
}
