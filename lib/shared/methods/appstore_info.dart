import 'package:appstore_info/appstore_info.dart';
import 'package:flutter/services.dart';
import 'package:starving_shopping_flutter_app/presentation/constant.dart';

openAppStoreInside() async {
  try {
    final appStoreInfoPlugin = AppstoreInfo();
    await appStoreInfoPlugin.presentAppStore(appID: appId);

  } on PlatformException catch (e) {
    print('Error al abrir la App Store: $e');
  } catch (e) {
    print('Error: $e');
  }
}
