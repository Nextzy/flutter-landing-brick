import 'package:design_system/lib.dart';

class AppText extends AppStatelessComponent {
  const AppText(
    this.data, {
    super.key,
  });

  final String data;

  @override
  Iterable<Component> build(BuildContext context) => [
        div(
          classes: 'text-2xl font-normal text-white',
          [text(data)],
        ),
      ];

  @css
  static final List<StyleRule> styles = [];
}
