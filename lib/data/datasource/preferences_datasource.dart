import 'package:shared_preferences/shared_preferences.dart';

import 'package:starving_shopping_flutter_app/data/constant.dart';
import 'package:starving_shopping_flutter_app/domain/datasource/local_preferences_datasource.dart';

class PreferencesDatasource extends LocalPreferencesDatasource {
  final SharedPreferences _sharedPreferences;

  PreferencesDatasource(this._sharedPreferences);
  
  @override
  String? getTimeNotification() {
    return _sharedPreferences.getString(Constant.notificationTimeKey);
  }
  
  @override
  Future<void> saveTimeNotification(String notificationTime) async {
    await _sharedPreferences.setString(Constant.notificationTimeKey, notificationTime);
  }
}