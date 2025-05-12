import 'package:design_system/lib.dart';

class AppButton extends AppStatefulComponent {
  const AppButton({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    this.style = ButtonStyle.brand,
    required this.label,
    this.showLeftIcon = false,
    this.leftIcon,
    this.showRightIcon = false,
    this.rightIcon,
  });

  final ButtonStyle style;
  final String label;
  final bool showLeftIcon;
  final String? leftIcon;
  final bool showRightIcon;
  final String? rightIcon;

  @override
  State<AppButton> createState() => AppButtonState();
}

class AppButtonState extends ComponentState<AppButton> {
  ButtonStyle get style => component.style; //
  String get label => component.label; //
  bool get showLeftIcon => component.showLeftIcon; //
  String? get leftIcon => component.leftIcon; //
  bool get showRightIcon => component.showRightIcon; //
  String? get rightIcon => component.rightIcon; //

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
