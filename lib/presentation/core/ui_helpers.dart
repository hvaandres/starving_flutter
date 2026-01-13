import 'package:flutter/material.dart';

import 'snackbar_type_duration.dart';
import 'app_constant.dart';

class UIHelpers {
  static void showPermissionDialog(
    BuildContext context,
    VoidCallback onGoToSettings,
  ) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text(AppConstant.permissionNeededTitle),
            content: const Text(AppConstant.notificationPermissionMessage),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(AppConstant.cancelLabel),
              ),
              TextButton(
                onPressed: onGoToSettings,
                child: const Text(AppConstant.goToSettingsLabel),
              ),
            ],
          ),
    );
  }

  static void showSnackBarMessage(
    BuildContext context,
    String message, [
    SnackbarTypeDurations durationType = SnackbarTypeDurations.medium,
  ]) {
    final Duration duration;
    switch (durationType) {
      case SnackbarTypeDurations.short:
        duration = AppConstant.snackBarShortDuration;
        break;
      case SnackbarTypeDurations.medium:
        duration = AppConstant.snackBarMediumDuration;
        break;
    }

    final snackBar = SnackBar(content: Text(message), duration: duration);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
