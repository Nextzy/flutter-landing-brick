import 'package:app/lib.dart';

class HeroSection extends AppStatelessComponent {
  const HeroSection({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) => [
        _buildBody(),
      ];

  Component _buildBody() {
    return div(
      classes: 'relative isolate overflow-hidden',
      [
        _buildBackground1(),
        _buildBackground2(),
        div(
          classes:
              'mx-auto max-w-7xl px-6 pt-10 pb-24 sm:pb-32 lg:flex lg:px-8 lg:py-40',
          [
            div(
              classes: 'mx-auto max-w-2xl shrink-0 lg:mx-0 lg:pt-8',
              [
                img(
                  classes: 'h-11',
                  src:
                      'https://tailwindcss.com/plus-assets/img/logos/mark.svg?color=indigo&shade=500',
                  alt: 'Your Company',
                ),
                div(
                  classes: 'mt-24 sm:mt-32 lg:mt-16',
                  [
                    a(
                      classes: 'inline-flex space-x-6',
                      href: '#',
                      [
                        span(
                          classes:
                              'rounded-full bg-indigo-500/10 px-3 py-1 text-sm/6 font-semibold text-indigo-400 ring-1 ring-indigo-500/20 ring-inset',
                          [
                            text("What's new"),
                          ],
                        ),
                        span(
                          classes:
                              'inline-flex items-center space-x-2 text-sm/6 font-medium text-gray-300',
                          [
                            span([text('Just shipped v1.0')]),
                            svg(
                              classes: 'size-5 text-gray-500',
                              viewBox: '0 0 20 20',
                              attributes: {
                                'fill': 'currentColor',
                                'aria-hidden': 'true',
                                'data-slot': 'icon',
                              },
                              [
                                path(
                                  attributes: {
                                    'fill-rule': 'evenodd',
                                    'clip-rule': 'evenodd',
                                  },
                                  d: 'M8.22 5.22a.75.75 0 0 1 1.06 0l4.25 4.25a.75.75 0 0 1 0 1.06l-4.25 4.25a.75.75 0 0 1-1.06-1.06L11.94 10 8.22 6.28a.75.75 0 0 1 0-1.06Z',
                                  [],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                h1(
                  classes:
                      'mt-10 text-5xl font-semibold tracking-tight text-pretty text-white sm:text-7xl',
                  [text('Deploy to the cloud with confidence')],
                ),
                p(
                  classes:
                      'mt-8 text-lg font-medium text-pretty text-gray-400 sm:text-xl/8',
                  [
                    text(
                        'Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo. Elit sunt amet fugiat veniam occaecat.')
                  ],
                ),
                div(
                  classes: 'mt-10 flex items-center gap-x-6',
                  [
                    a(
                      classes:
                          'rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-xs hover:bg-indigo-400 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-400',
                      href: '#',
                      [text('Get started')],
                    ),
                    a(
                      classes: 'text-sm/6 font-semibold text-white',
                      href: '#',
                      [
                        span(
                          attributes: {
                            'aria-hidden': 'true',
                          },
                          [text('Learn more '), text('→')],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        _buildAppScreenshotImage(),
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
              id: '983e3e4c-de6d-4c3f-8d64-b9761d1534cc',
              attributes: {
                'width': '200',
                'height': '200',
                'x': '50%',
                'y': '-1',
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
            'y': '-1',
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
            'fill': 'url(#983e3e4c-de6d-4c3f-8d64-b9761d1534cc)',
          },
          [],
        ),
      ],
    );
  }

  Component _buildBackground2() {
    return div(
      classes:
          'absolute top-10 left-[calc(50%-4rem)] -z-10 transform-gpu blur-3xl sm:left-[calc(50%-18rem)] lg:top-[calc(50%-30rem)] lg:left-48 xl:left-[calc(50%-24rem)]',
      [
        div(
          classes:
              'aspect-1108/632 w-277 bg-linear-to-r from-[#80caff] to-[#4f46e5] opacity-20',
          [], //todo add polygon
        )
      ],
    );
  }

  Component _buildAppScreenshotImage() {
    return div(
      classes:
          'mx-auto mt-16 flex max-w-2xl sm:mt-24 lg:mt-0 lg:mr-0 lg:ml-10 lg:max-w-none lg:flex-none xl:ml-32',
      [
        div(
          classes: 'max-w-3xl flex-none sm:max-w-5xl lg:max-w-none',
          [
            img(
              classes:
                  'w-304 rounded-md bg-white/5 shadow-2xl ring-1 ring-white/10',
              src:
                  'https://tailwindcss.com/plus-assets/img/component-images/dark-project-app-screenshot.png',
              alt: 'App screenshot',
              width: 2432,
              height: 1442,
            ),
          ],
        ),
      ],
    );
  }
}
