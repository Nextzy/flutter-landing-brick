import 'package:app/lib.dart';

class AppMenu extends AppStatefulComponent {
  const AppMenu({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
  });

  @override
  State<AppMenu> createState() => AppMenuState();
}

class AppMenuState extends ComponentState<AppMenu> {
  @override
  Iterable<Component> build(BuildContext context) => [];

  @css
  static final List<StyleRule> styles = [];
}
