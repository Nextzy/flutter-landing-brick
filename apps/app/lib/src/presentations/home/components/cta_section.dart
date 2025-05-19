import 'package:app/lib.dart';

class CtaSection extends AppStatelessComponent {
  const CtaSection({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) => [
        _buildBody(),
      ];

  Component _buildBody() {
    return div(
      classes: 'relative isolate mt-32 px-6 py-32 sm:mt-56 sm:py-40 lg:px-8',
      [
        div(
          classes:
              'absolute inset-x-0 top-10 -z-10 flex transform-gpu justify-center overflow-hidden blur-3xl',
          [],
        ),
        div(
          classes: 'mx-auto max-w-2xl text-center',
          [
            h2(
              classes:
                  'text-4xl font-semibold tracking-tight text-balance text-white sm:text-5xl',
              [text('Boost your productivity. Start using our app today.')],
            ),
            p(
              classes: 'mx-auto mt-6 max-w-xl text-lg/8 text-gray-300',
              [
                text(
                    'Incididunt sint fugiat pariatur cupidatat consectetur sit cillum anim id veniam aliqua proident excepteur commodo do ea.')
              ],
            ),
            div(
              classes: 'mt-10 flex items-center justify-center gap-x-6',
              [
                a(
                  classes:
                      'rounded-md bg-white px-3.5 py-2.5 text-sm font-semibold text-gray-900 shadow-xs hover:bg-gray-100 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-white',
                  href: '#',
                  [text('Get started')],
                ),
                a(
                  classes: 'text-sm/6 font-semibold text-white',
                  href: '#',
                  [
                    text('Learn more '),
                    span(
                      attributes: {
                        'aria-hidden': 'true',
                      },
                      [text('→')],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
