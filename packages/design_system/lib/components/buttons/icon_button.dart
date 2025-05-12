import 'package:design_system/lib.dart';

class AppIconButton extends AppStatefulComponent {
  const AppIconButton({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    this.style = ButtonStyle.brand,
    required this.icon,
  });

  final ButtonStyle style;
  final String icon;

  @override
  State<AppIconButton> createState() => AppIconButtonState();
}

class AppIconButtonState extends ComponentState<AppIconButton> {
  ButtonStyle get style => component.style; //
  String get icon => component.icon; //

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield switch (style) {
      ButtonStyle.brand => buildBrand(context),
      ButtonStyle.filled => buildFilled(context),
      ButtonStyle.destructive => buildDestructive(context),
      ButtonStyle.outline => buildOutlined(context),
      ButtonStyle.shaded => buildShaded(context),
      ButtonStyle.text => buildText(context),
    };
  }

  Component buildBrand(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  Component buildFilled(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  Component buildDestructive(BuildContext context) {
    // TODO: Handle this case.

    return div([]);
  }

  Component buildOutlined(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  Component buildShaded(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  Component buildText(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  @css
  static final List<StyleRule> styles = [];
}
