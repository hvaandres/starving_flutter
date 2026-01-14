import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app_settings/app_settings.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/blocs.dart';
import 'package:starving_shopping_flutter_app/presentation/core/app_constant.dart';
import 'package:starving_shopping_flutter_app/presentation/core/snackbar_type_duration.dart';
import 'package:starving_shopping_flutter_app/presentation/core/ui_helpers.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen>
    with WidgetsBindingObserver {
  bool _shouldCheckNotificationPermission = false;

  @override
  void initState() {
    super.initState();
    context.read<PermissionBloc>().add(CheckNotificationPermission());
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (_shouldCheckNotificationPermission) {
        _shouldCheckNotificationPermission = false;
        context.read<PermissionBloc>().add(CheckNotificationPermission());
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // remove when bloc is implemented
    final Map<String, IconData> optionIcons = {
      '8:00 a.m.': Icons.notifications,
      '12:00 p.m.': Icons.notifications,
      '6:00 a.m.': Icons.notifications,
      'Custom': Icons.watch_later,
    };

    final permissionState = context.watch<PermissionBloc>().state;
    final notificationCanPerform = permissionState is PermissionGranted;

    return MultiBlocListener(
      listeners: _buildListeners(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ParagraphCard(
              title: 'Daily Reminders',
              description:
                  'Set up gentle daily reminders to make sure you don\'t forget to purchase any of your groceries.',
              backgroundColor: context.primaryBackgroundColor,
              paragraphColor: context.primaryContrastColor,
            ),
            CustomCardIcon(
              label: 'Enable Daily Reminders',
              iconData:
                  notificationCanPerform
                      ? Icons.notifications
                      : Icons.notifications_off,
              iconColor: context.primaryBackgroundColor,
              textColor: context.primaryContrastColor,
              circleAvatarColor: context.primaryContrastColor,
              cardBackgroundColor: context.backgroundSecondaryColor,
              onPressed:
                  () =>
                      notificationCanPerform
                          ? null
                          : context.read<PermissionBloc>().add(
                            RequestNotificationPermission(),
                          ),
            ),
            //#region Reminder time selection
            if (notificationCanPerform)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Choose Reminder Time',
                    style: TextStyle(
                      color: context.primaryContrastColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (notificationCanPerform)
              CustomIconTextListCard(
                optionIcons: optionIcons,
                cardWidth: 120.0,
                cardHeight: 100.0,
                activeColor: Colors.blue,
                inactiveColor: context.primaryContrastColor,
                textColor: context.primaryContrastColor,
                backgroundColor: context.backgroundSecondaryColor,
                iconColor: context.primaryBackgroundColor,
                // update with bloc when it is implemented
                itemSelected: 0,
                onItemSelected: (index) {
                  // wip
                },
              ),
            if (notificationCanPerform)
              DynamicCard(
                icon: Icons.notifications_active,
                title: 'Current schedule',
                subtitle: 'Daily reminder scheduled for 8:00 a.m.',
                status: 'Active',
                description: 'Last modified: 1 second ago',
                iconColor: context.primaryContrastColor,
                subtitleColor: context.primaryContrastColor,
                titleColor: context.primaryContrastColor,
                cardColor: context.backgroundSecondaryColor,
              ),
            //#endregion
            DynamicCard(
              title: 'About Daily Reminders',
              description:
                  'This app helps you stay on top of grocery shopping with gentle reminders, keeping your routine organized and mindful.',
              titleColor: context.primaryContrastColor,
              cardColor: context.backgroundSecondaryColor,
            ),
            if (!notificationCanPerform)
              CustomAssetImage(
                pathImage: getFullPathAsset('reminder_screen_resource.png'),
              ),
          ],
        ),
      ),
    );
  }

  List<BlocListener> _buildListeners() {
    return [
      BlocListener<PermissionBloc, PermissionState>(
        listener: _handlePermissionState,
      ),
    ];
  }

  void _handlePermissionState(BuildContext context, PermissionState state) {
    switch (state) {
      case PermissionDenied _:
        UIHelpers.showSnackBarMessage(
          context,
          AppConstant.notificationPermissionDenied,
          SnackbarTypeDurations.medium,
        );
        break;
      case PermissionDeniedPermanently _:
        UIHelpers.showPermissionDialog(context, _goToNotificationSettings);
        break;
      case PermissionDeniedGoToSettings _:
        UIHelpers.showPermissionDialog(context, _goToNotificationIOSSettings);
        break;
      default:
        break;
    }
  }

  Future<void> _goToNotificationSettings() async {
    _shouldCheckNotificationPermission = true;
    Navigator.of(context).pop();
    await openAppSettings();
  }

  Future<void> _goToNotificationIOSSettings() async {
    _shouldCheckNotificationPermission = true;
    AppSettings.openAppSettings(type: AppSettingsType.notification);
    Navigator.of(context).pop();
  }
}
