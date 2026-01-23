import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:starving_shopping_flutter_app/presentation/blocs/blocs.dart';

class AlarmPermissionBloc extends Bloc<AlarmPermissionEvent, AlarmPermissionState> {
  AlarmPermissionBloc() : super(AlarmPermissionInitial()) {
    on<RequestAlarmPermission>(_handleRequestAlarmPermission);
  }

  Future<void> _handleRequestAlarmPermission(
      AlarmPermissionEvent event, Emitter<AlarmPermissionState> emit) async {
    if (!Platform.isAndroid) {
      emit(AlarmPermissionGranted());
    } else {
      final isGranted = await Permission.scheduleExactAlarm.status.isGranted;
      if (isGranted) {
        emit(AlarmPermissionGranted());
      } else {
        emit(AlarmPermissionDenied());
      }
    }
  }
}