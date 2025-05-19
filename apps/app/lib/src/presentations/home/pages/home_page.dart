import 'package:app/lib.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class HomePage extends AppStatefulPage {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends PageState<HomePage> {
  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  @override
  Iterable<Component> build(BuildContext context) => [
        _buildBody(),
        // _buildTestBody1(),
        // _buildTestBody2(),
      ];

  Component _buildBody() {
    return div(
      classes: 'bg-gray-900 ',
      [
        main_(
          [
            _buildHeroSection(),
            _buildLogoCloud(),
            _buildFeatureSection1(),
            _buildFeatureSection2(),
            _buildStats(),
            _buildCtaSection(),
          ],
        ),
        _buildFooter(),
      ],
    );
  }

  Component _buildHeroSection() {
    return div(
      classes: 'relative isolate overflow-hidden ',
      [
        svg(
          classes:
              'absolute inset-0 -z-10 size-full mask-[radial-gradient(100%_100%_at_top_right,white,transparent)] stroke-white/10 ',
          [
            div([]),
            svg(
              classes: 'overflow-visible fill-gray-800/20',
              [
                path(
                  d: 'M-200 0h201v201h-201Z M600 0h201v201h-201Z M-400 600h201v201h-201Z M200 800h201v201h-201Z',
                  strokeWidth: '0',
                  [],
                ),
              ],
            ),
          ],
        ),
        div(
          classes:
              'absolute top-10 left-[calc(50%-4rem)] -z-10 transform-gpu blur-3xl sm:left-[calc(50%-18rem)] lg:top-[calc(50%-30rem)] lg:left-48 xl:left-[calc(50%-24rem)]',
          [
            div(
              classes:
                  'aspect-1108/632 w-277 bg-linear-to-r from-[#80caff] to-[#4f46e5] opacity-20',
              [],
            )
          ],
        ),
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
                      classes: 'text-white',
                      href: '#',
                      [
                        span(
                          classes:
                              'bg-indigo-500/10 px-3 py-1 text-sm/6 font-semibold text-indigo-400 ring-1 ring-indigo-500/20 ring-inset',
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
                                'data-slot': 'icon',
                              },
                              [
                                path(
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
                          'rounded bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-xs hover:bg-indigo-400 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-400',
                      href: '#',
                      [text('Get started')],
                    ),
                    a(
                      classes: 'text-sm/6 font-semibold text-white',
                      href: '#',
                      [
                        span([text('Learn more '), text('→')])
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        div(
          classes:
              'mx-auto mt-16 flex max-w-2xl sm:mt-24 lg:mt-0 lg:mr-0 lg:ml-10 lg:max-w-none lg-flex-none xl:ml-32',
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
        ),
      ],
    );
  }

  Component _buildLogoCloud() {
    return div(
      classes: 'mx-auto mt-8 max-w-7xl px-6 sm:mt-16 lg:px-8',
      [
        h2(
          classes: 'text-center text-lg/8 font-semibold text-white',
          [
            text('The world’s most innovative companies use our app'),
          ],
        ),
        div(
          classes:
              'mx-auto mt-10 grid max-w-lg grid-cols-4 items-center gap-x-8 gap-y-10 sm:max-w-xl sm:grid-cols-6 sm:gap-x-10 lg:mx-0 lg:max-w-none lg:grid-cols-5',
          [
            img(
              src:
                  'https://tailwindcss.com/plus-assets/img/logos/158x48/transistor-logo-white.svg',
              alt: 'Transistor',
              width: 158,
              height: 48,
            ),
            img(
              src:
                  'https://tailwindcss.com/plus-assets/img/logos/158x48/reform-logo-white.svg',
              alt: 'Reform',
              width: 158,
              height: 48,
            ),
            img(
              src:
                  'https://tailwindcss.com/plus-assets/img/logos/158x48/tuple-logo-white.svg',
              alt: 'Tuple',
              width: 158,
              height: 48,
            ),
            img(
              src:
                  'https://tailwindcss.com/plus-assets/img/logos/158x48/savvycal-logo-white.svg',
              alt: 'SavvyCal',
              width: 158,
              height: 48,
            ),
            img(
              src:
                  'https://tailwindcss.com/plus-assets/img/logos/158x48/statamic-logo-white.svg',
              alt: 'Statamic',
              width: 158,
              height: 48,
            ),
          ],
        ),
      ],
    );
  }

  Component _buildFeatureSection1() {
    return div(
      classes: 'mx-auto mt-32 max-w-7xl px-6 sm:mt-56 lg:px-8',
      [
        div(
          classes: 'mx-auto max-w-2xl text-center',
          [
            h2(
              classes: 'text-base/7 font-semibold text-indigo-400',
              [text('Deploy faster')],
            ),
            p(
              classes:
                  'mt-2 text-4xl font-semibold tracking-tight text-pretty text-white sm:text-5xl lg:text-balance',
              [text('Everything you need to deploy your app')],
            ),
            p(
              classes: 'mt-6 text-lg/8 text-gray-300',
              [
                text(
                    'Quis tellus eget adipiscing convallis sit sit eget aliquet quis. Suspendisse eget egestas a elementum pulvinar et feugiat blandit at. In mi viverra elit nunc.')
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildFeatureSection2() {
    return div([]);
  }

  Component _buildStats() {
    return div(
      classes: 'mx-auto mt-32 max-w-7xl px-6 sm:mt-56 lg:px-8',
      [
        div(
          classes: 'mx-auto max-w-2xl lg:mx-0 lg:max-w-xl',
          [
            h2(
              classes: 'text-base/8 font-semibold text-indigo-400',
              [text('Our track record')],
            ),
            p(
              classes:
                  'mt-2 text-4xl font-semibold tracking-tight text-pretty text-white sm:text-5xl',
              [text('Trusted by thousands of creators\u00A0worldwide')],
            ),
            p(
              classes: 'mt-6 text-lg/8 text-gray-300',
              [
                text(
                    'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis.')
              ],
            ),
          ],
        ),
        DomComponent(
          tag: 'dl',
          classes:
              'mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-10 text-white sm:mt-20 sm:grid-cols-2 sm:gap-y-16 lg:mx-0 lg:max-w-none lg:grid-cols-4',
          children: [
            div(
              classes: 'flex flex-col gap-y-3 border-l border-white/10 pl-6',
              [
                DomComponent(
                  tag: 'dt',
                  classes: 'text-sm/6',
                  children: [
                    Text('Developers on the platform'),
                  ],
                ),
                DomComponent(
                  tag: 'dd',
                  classes: 'order-first text-3xl font-semibold tracking-tight',
                  children: [
                    Text('8,000+'),
                  ],
                ),
              ],
            ),
            div(
              classes: 'flex flex-col gap-y-3 border-l border-white/10 pl-6',
              [
                DomComponent(
                  tag: 'dt',
                  classes: 'text-sm/6',
                  children: [
                    Text('Daily requests'),
                  ],
                ),
                DomComponent(
                  tag: 'dd',
                  classes: 'order-first text-3xl font-semibold tracking-tight',
                  children: [
                    Text('900m+'),
                  ],
                ),
              ],
            ),
            div(
              classes: 'flex flex-col gap-y-3 border-l border-white/10 pl-6',
              [
                DomComponent(
                  tag: 'dt',
                  classes: 'text-sm/6',
                  children: [
                    Text('Uptime guarantee'),
                  ],
                ),
                DomComponent(
                  tag: 'dd',
                  classes: 'order-first text-3xl font-semibold tracking-tight',
                  children: [
                    Text('99.9%'),
                  ],
                ),
              ],
            ),
            div(
              classes: 'flex flex-col gap-y-3 border-l border-white/10 pl-6',
              [
                DomComponent(
                  tag: 'dt',
                  classes: 'text-sm/6',
                  children: [
                    Text('Projects deployed'),
                  ],
                ),
                DomComponent(
                  tag: 'dd',
                  classes: 'order-first text-3xl font-semibold tracking-tight',
                  children: [
                    Text('12m'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildCtaSection() {
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

  Component _buildFooter() {
    return footer(
      classes: 'mx-auto max-w-7xl lg:px-8',
      [
        div(
          classes:
              'border-t border-white/10 py-12 md:flex md:items-center md:justify-between',
          [
            div(
              classes: 'flex justify-center gap-x-6 text-white md:order-2',
              [
                a(
                  classes: 'text-gray-400 hover:text-gray-300',
                  href: '#',
                  [
                    span(
                      // classes: 'sr-only',
                      [text('Facebook')],
                    ),
                    // svg(
                    //   [
                    //     path(
                    //       [],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                a(
                  classes: 'text-gray-400 hover:text-gray-300',
                  href: '#',
                  [
                    span(
                      // classes: 'sr-only',
                      [text('Instagram')],
                    ),
                    // svg(
                    //   [
                    //     path(
                    //       [],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                a(
                  classes: 'text-gray-400 hover:text-gray-300',
                  href: '#',
                  [
                    span(
                      // classes: 'sr-only',
                      [text('X')],
                    ),
                    // svg(
                    //   [
                    //     path(
                    //       [],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                a(
                  classes: 'text-gray-400 hover:text-gray-300',
                  href: '#',
                  [
                    span(
                      // classes: 'sr-only',
                      [text('GitHub')],
                    ),
                    // svg(
                    //   [
                    //     path(
                    //       [],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                a(
                  classes: 'text-gray-400 hover:text-gray-300',
                  href: '#',
                  [
                    span(
                      // classes: 'sr-only',
                      [text('YouTube')],
                    ),
                    // svg(
                    //   [
                    //     path(
                    //       [],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
            p(
              classes:
                  'mt-8 text-center text-sm/6 text-gray-400 md:order-1 md:mt-0',
              [
                text('\u00A9 2024 Your Company, Inc. All rights reserved.'),
              ],
            )
          ],
        )
      ],
    );
  }

  Component _buildTestBody1() {
    return section(
      classes: 'bg-bg-default dark:bg-bg-default-inverse ',
      [
        div(
          classes: ''
              'bg-white gap-x-10 '
              'dark:bg-slate-800 dark:-outline-offset-1 dark:outline-white/10 '
              'outline outline-black/5 shadow-lg rounded-xl '
              'text-text-primary dark:text-text-primary-inverse '
              'font-display '
              'mx-auto max-w-sm '
              'flex items-center p-10 '
              '',
          [
            img(
              // classes: 'size-60 ',
              classes: 'size-60 md:size-100 xl:size-140 ',
              src: '/images/logo.svg',
              alt: 'logo',
            ),
            div([
              div(
                classes: 'text-xl font-medium text-black dark:text-white ',
                [text('ChitChat')],
              ),
              p(
                classes: 'text-gray-500 dark:text-gray-400',
                [text('You have a new message!')],
              ),
            ]),
          ],
        ),
        br(),
        AppButton(
          label: 'brand',
          style: ButtonStyle.brand,
        ),
      ],
    );
  }

  Component _buildTestBody2() {
    return section([
      img(src: 'images/logo.svg', width: 80),
      // h1([text('Demo เดโม่')]),
      // p([text('Welcome to landing page!')]),
      div(
          classes:
              'p-6 max-w-sm mx-auto bg-white rounded-xl shadow-lg flex items-center space-x-4',
          [
            div(classes: 'shrink-0', [
              img(
                  classes: 'h-12 w-12',
                  src: '/images/logo.svg',
                  alt: 'Tailwind Logo'),
            ]),
            div([
              div(
                  classes: 'text-2xl font-normal text-black',
                  [text('Demo เดโม่')]),
              p(classes: 'text-slate-500', [text('Welcome to landing page!')]),
            ])
          ]),
      div(styles: Styles(height: 100.px), []),
      // const Counter(),
      br(),
      div(
        classes: 'bg-red-500 text-white w-300 h-300',
        [text('test')],
      ),
      br(),
      AppButton(
        label: 'brand',
        style: ButtonStyle.brand,
      ),
      br(),
      AppButton(
        label: 'filled',
        style: ButtonStyle.filled,
      ),
      br(),
      AppButton(
        label: 'destructive',
        style: ButtonStyle.destructive,
      ),
      br(),
      AppButton(
        label: 'outline',
        style: ButtonStyle.outline,
      ),
      br(),
      AppButton(
        label: 'shaded',
        style: ButtonStyle.shaded,
      ),
      br(),
      AppButton(
        label: 'text',
        style: ButtonStyle.text,
      ),
      br(),
    ]);
  }
}
