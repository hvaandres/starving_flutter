import 'package:starving_shopping_flutter_app/presentation/constant.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

openEmail() async {
  final Uri uri = Uri(
    scheme: 'mailto',
    path: mailRegistered,
  );
  try {
    await launchUrl(uri);
  } catch (e) {
    e.toString();
  }
}
