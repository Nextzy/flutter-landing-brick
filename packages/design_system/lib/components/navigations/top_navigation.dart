import 'package:design_system/lib.dart';

class AppTopNavigation extends AppStatelessComponent {
  const AppTopNavigation({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    this.type = NavigationType.brand,
    this.center,
    this.right,
    this.fullWidth,
  });

  final NavigationType type;
  final Component? center;
  final Component? right;
  final bool? fullWidth;

  @override
  Iterable<Component> build(BuildContext context) => [];

  @css
  static final List<StyleRule> styles = [];
}
