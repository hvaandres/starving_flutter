import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static initEnvironment() async {
    await dotenv.load(fileName: '.env');
  }

  static bool wantSeeExamples =
    (dotenv.env['WANT_SEE_EXAMPLES'] ?? 'false').toLowerCase() == 'true';
}
