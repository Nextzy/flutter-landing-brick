import 'package:design_system/lib.dart';

class AppText extends AppStatelessComponent {
  const AppText(
    this.data, {
    super.key,
    this.classes,
  });

  final String data;
  final String? classes;

  @override
  Iterable<Component> build(BuildContext context) => [
        div(
          classes: classes,
          [text(data)],
        ),
      ];

  @css
  static final List<StyleRule> styles = [];
}
