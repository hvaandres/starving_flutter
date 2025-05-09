import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

class OpenUrlScreen extends StatelessWidget {
  const OpenUrlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open url'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          child: const Text('Show main homepage'),
        ),
      ),
    );
  }

  _launchUrl() async {
    final Uri url = Uri.parse("https://github.com/hvaandres");
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
