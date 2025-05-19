import 'dart:io';

import 'package:appstore_info/appstore_info.dart';

import 'package:starving_shopping_flutter_app/presentation/constant.dart';
import 'package:starving_shopping_flutter_app/shared/methods/url.dart';

openAppStoreInside() async {
  try {
    if (Platform.isIOS) {
      final appStoreInfoPlugin = AppstoreInfo();
      await appStoreInfoPlugin.presentAppStore(appID: appId);
    } else {
      openUrl(androidStoreUrl);
    }
  } catch (e) {
    print('Error: $e');
  }
}
