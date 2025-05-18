import 'dart:io';
import 'package:starving_shopping_flutter_app/presentation/constant.dart';

import 'resource_manager.dart';

class ResourceManagerImpl extends ResourceManager {
  @override
  getStoreUrl() {
    return Platform.isIOS ? iosStoreUrl : androidStoreUrl;
  }
}
