import 'package:design_system/lib.dart';

class AppTextArea extends AppStatefulComponent {
  const AppTextArea({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
  });

  @override
  State<AppTextArea> createState() => AppTextAreaState();
}

class AppTextAreaState extends ComponentState<AppTextArea> {
  @override
  Iterable<Component> build(BuildContext context) => [];

  @css
  static final List<StyleRule> styles = [];
}
