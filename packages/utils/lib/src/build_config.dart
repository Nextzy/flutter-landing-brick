import 'package:utils/lib.dart';

class BuildConfig {
  static bool get debug => !kReleaseMode;

  static bool get release => kReleaseMode;
}
