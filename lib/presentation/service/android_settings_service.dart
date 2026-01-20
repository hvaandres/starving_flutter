import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

class AndroidSettingsService {
  Future<void> openScheduleExactAlarmSettings() async {
    final intent = const AndroidIntent(
      action: 'android.settings.REQUEST_SCHEDULE_EXACT_ALARM',
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
    );
    await intent.launch();
  }
}