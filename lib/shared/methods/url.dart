import 'package:url_launcher/url_launcher.dart' show launchUrl, canLaunchUrl;

openUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw Exception('Could not launch $url');
  }
}
