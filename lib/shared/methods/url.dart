import 'package:url_launcher/url_launcher.dart' show launchUrl, canLaunchUrl;

openUrl(String url) async {
  final Uri uri = Uri.parse(url);
  try {
    await launchUrl(uri);
  } catch (e) {
    e.toString();
  }
}
