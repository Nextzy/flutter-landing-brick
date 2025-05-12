import 'package:core/lib.dart';

abstract class AppStatefulComponent extends StatefulComponent {
  const AppStatefulComponent({
    super.key,
    this.size = WidgetSize.md,
    this.themeMode,
    this.state = FullWidgetState.normal,
    this.focused = false,
  });

  final WidgetSize size;
  final ThemeMode? themeMode;
  final FullWidgetState state;
  final bool focused;
}