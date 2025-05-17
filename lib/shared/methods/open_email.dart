import 'package:starving_shopping_flutter_app/presentation/constant.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl, canLaunchUrl;

openEmail() async {
  final Uri uri = Uri(
    scheme: 'mailto',
    path: mailRegistered,
  );
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw Exception('Could not open email');
  }
}
