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
        _buildBackground1(),
        _buildBackground2(),
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

  Component _buildBackground1() {
    return svg(
      classes:
          'absolute inset-0 -z-10 size-full mask-[radial-gradient(100%_100%_at_top_right,white,transparent)] stroke-white/10',
      attributes: {
        'aria-hidden': 'true',
      },
      [
        DomComponent(
          tag: 'defs',
          children: [
            DomComponent(
              tag: 'pattern',
              id: '1d4240dd-898f-445f-932d-e2872fd12de3',
              attributes: {
                'width': '200',
                'height': '200',
                'x': '50%',
                'y': '0',
                'patternUnits': 'userSpaceOnUse',
              },
              children: [
                path(
                  d: 'M.5 200V.5H200',
                  attributes: {
                    'fill': 'none',
                  },
                  [],
                )
              ],
            ),
          ],
        ),
        svg(
          classes: 'overflow-visible fill-gray-800/20',
          attributes: {
            'x': '50%',
            'y': '0',
          },
          [
            path(
              d: 'M-200 0h201v201h-201Z M600 0h201v201h-201Z M-400 600h201v201h-201Z M200 800h201v201h-201Z',
              strokeWidth: '0',
              [],
            ),
          ],
        ),
        rect(
          width: '100%',
          height: '100%',
          strokeWidth: '0',
          attributes: {
            'fill': 'url(#1d4240dd-898f-445f-932d-e2872fd12de3)',
          },
          [],
        ),
      ],
    );
  }

  Component _buildBackground2() {
    return div(
      classes:
          'absolute inset-x-0 top-10 -z-10 flex transform-gpu justify-center overflow-hidden blur-3xl',
      attributes: {
        'aria-hidden': 'true',
      },
      [
        div(
          classes:
              'aspect-1108/632 w-277 flex-none bg-linear-to-r from-[#80caff] to-[#4f46e5] opacity-20',
          [], //todo add polygon
        )
      ],
    );
  }
}
