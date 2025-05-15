import 'package:app/lib.dart';

class AppTopNavigationMenu extends AppStatefulComponent {
  const AppTopNavigationMenu({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    required this.type,
    this.label,
  });

  final NavigationMenuType type;
  final String? label;

  @override
  State<AppTopNavigationMenu> createState() => AppTopNavigationMenuState();
}

class AppTopNavigationMenuState extends ComponentState<AppTopNavigationMenu> {
  @override
  Iterable<Component> build(BuildContext context) => [];

  @css
  static final List<StyleRule> styles = [];
}
