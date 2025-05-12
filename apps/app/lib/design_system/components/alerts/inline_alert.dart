import 'package:app/lib.dart';

class AppInlineAlert extends AppStatelessComponent {
  const AppInlineAlert({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    required this.color,
    this.showIcon = true,
    this.icon,
    this.showTitle = true,
    this.title,
    this.showDescription = true,
    this.description,
    this.closeable = true,
  });

  final FeedbackColor color;
  final bool showIcon;
  final String? icon;
  final bool showTitle;
  final String? title;
  final bool showDescription;
  final String? description;
  final bool closeable;

  @override
  Iterable<Component> build(BuildContext context) => [];

  @css
  static final List<StyleRule> styles = [];
}
