import 'dart:developer' as developer;
import 'package:network/lib.dart';

class NLog {
  static bool get _isDebug => !kReleaseMode;

  static const String TOP_LEFT_CORNER = '┌';
  static const String BOTTOM_LEFT_CORNER = '└';
  static const String MIDDLE_CORNER = '├';
  static const String HORIZONTAL_LINE = '│';
  static const String DOUBLE_DIVIDER =
      '────────────────────────────────────────────────────────';
  static const String SINGLE_DIVIDER =
      '┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄';

  static void i(String tag, String message) {
    if (_isDebug) {
      developer.log('$tag | $TOP_LEFT_CORNER$DOUBLE_DIVIDER');
      developer.log('$tag | $HORIZONTAL_LINE $message');
      developer.log('$tag | $BOTTOM_LEFT_CORNER$DOUBLE_DIVIDER');
    }
  }

  static void e(String tag, String serviceName, Object exception) {
    if (_isDebug) {
      developer.log('$tag | $TOP_LEFT_CORNER$DOUBLE_DIVIDER');
      developer.log('$tag | $HORIZONTAL_LINE Throwable: ${exception.runtimeType}');
      developer.log('$tag | $HORIZONTAL_LINE Message: $exception');
      developer.log('$tag | $MIDDLE_CORNER$SINGLE_DIVIDER');
      developer.log('$tag | $HORIZONTAL_LINE Service: $serviceName');
      developer.log('$tag | $BOTTOM_LEFT_CORNER$DOUBLE_DIVIDER');
    }
  }
}
