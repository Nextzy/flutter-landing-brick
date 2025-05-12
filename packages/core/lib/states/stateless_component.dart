import 'package:core/lib.dart';

abstract class AppStatelessComponent extends StatelessComponent {
  const AppStatelessComponent({
    super.key,
    this.size,
    this.themeMode,
    this.state,
    this.focused = false,
  });

  final WidgetSize? size;
  final ThemeMode? themeMode;
  final FullWidgetState? state;
  final bool focused;
}
