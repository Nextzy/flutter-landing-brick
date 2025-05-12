import 'package:app/lib.dart';

class AppBadge extends AppStatelessComponent {
  const AppBadge({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    this.style = BadgeStyle.subtle,
    required this.label,
    this.color,
  });

  final BadgeStyle style;
  final String label;
  final String? color;

  @override
  Iterable<Component> build(BuildContext context) => [
        div(
            classes:
                'inline-flex items-center rounded-md bg-[color:var(--color-bg-subtle-blue)] px-[0.375em] py-[0.125em] ring-1 ring-[color:var(--color-border-subtle-blue)] ring-inset',
            [
              span(
                classes:
                    'px-[0.25em] text-14-medium text-[color:var(--color-text-blue)]',
                [
                  text(label),
                ],
              ),
            ])
      ];
}
