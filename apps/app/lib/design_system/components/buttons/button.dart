import 'package:app/lib.dart';

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
    return button(
      classes: ''
          'bg-button-primary hover:bg-button-primary-hover active:bg-button-primary-active '
          'text-text-primary-on-color px-20 py-10 rounded '
          'focus:outline-2 focus:outline-offset-2 focus:outline-button-primary '
          '',
      events: {
        'click': (_) => print('Button clicked!'),
      },
      [text(label)],
    );
  }

  Component buildFilled(BuildContext context) {
    return button(
      classes:
          'bg-button-filled text-white px-4 py-2 rounded hover:bg-blue-500',
      events: {
        'click': (_) => print('Button clicked!'),
      },
      [text(label)],
    );
  }

  Component buildDestructive(BuildContext context) {
    return button(
      classes:
          'bg-button-destructive-active text-white px-4 py-2 rounded hover:bg-blue-500',
      events: {
        'click': (_) => print('Button clicked!'),
      },
      [text(label)],
    );
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
