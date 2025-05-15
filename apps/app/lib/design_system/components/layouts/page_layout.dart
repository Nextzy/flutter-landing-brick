import 'package:app/lib.dart';

class PageLayout extends AppStatelessComponent {
  const PageLayout({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    this.left,
    this.top,
    this.right,
    this.tab,
    this.body,
    this.body2,
    this.body3,
  });

  final Component? left;
  final Component? top;
  final Component? right;
  final Component? tab;
  final Component? body;
  final Component? body2;
  final Component? body3;

  @override
  Iterable<Component> build(BuildContext context) => [
        div([
          if (left != null)
            div(
              id: 'left-layout',
              classes:
                  'w-[280px] self-stretch inline-flex justify-start items-start',
              [left!],
            ),
          div(
            id: 'main-container-layout',
            classes: 'w-full inline-flex flex-col justify-start items-start',
            [
              if (top != null) top!,
              div(
                id: 'content-container-layout',
                classes: 'w-full inline-flex justify-start items-center',
                [
                  div(
                    id: 'tab-container-layout',
                    classes:
                        'w-full inline-flex flex-col justify-start items-center',
                    [
                      if (tab != null) tab!,
                      div(
                        id: 'body-container-layout',
                        classes: 'inline-flex justify-center items-start',
                        [
                          if (body != null) body!,
                          if (body2 != null) body2!,
                          if (body3 != null) body3!
                        ],
                      ),
                    ],
                  ),
                  if (right != null)
                    div(
                      id: 'right-layout',
                      classes:
                          'w-[380px] self-stretch inline-flex justify-start items-start',
                      [right!],
                    )
                ],
              )
            ],
          )
        ])
      ];

  @css
  static final List<StyleRule> styles = [];
}
