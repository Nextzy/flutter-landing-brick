import 'package:app/lib.dart';

class FeatureSection1 extends AppStatelessComponent {
  const FeatureSection1({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) => [
        _buildBody(),
      ];

  Component _buildBody() {
    return div(
      classes: 'mx-auto mt-32 max-w-7xl px-6 sm:mt-56 lg:px-8',
      [
        _buildTopContent(),
        _buildFeatureList(),
      ],
    );
  }

  Component _buildTopContent() {
    return div(
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
    );
  }

  Component _buildFeatureList() {
    return div(
      classes: 'mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-none',
      [
        DomComponent(
          tag: 'dl',
          classes:
              'grid max-w-xl grid-cols-1 gap-x-8 gap-y-16 lg:max-w-none lg:grid-cols-3',
          children: [
            _buildFeatureListContainer(
              iconShape:
                  'm3.75 13.5 10.5-11.25L12 10.5h8.25L9.75 21.75 12 13.5H3.75Z',
              term: 'Server monitoring',
              description:
                  'Non quo aperiam repellendus quas est est. Eos aut dolore aut ut sit nesciunt. Ex tempora quia. Sit nobis consequatur dolores incidunt.',
            ),
            _buildFeatureListContainer(
              iconShape:
                  'M15 19.128a9.38 9.38 0 0 0 2.625.372 9.337 9.337 0 0 0 4.121-.952 4.125 4.125 0 0 0-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 0 1 8.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0 1 11.964-3.07M12 6.375a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0Zm8.25 2.25a2.625 2.625 0 1 1-5.25 0 2.625 2.625 0 0 1 5.25 0Z',
              term: 'Collaborate',
              description:
                  'Vero eum voluptatem aliquid nostrum voluptatem. Vitae esse natus. Earum nihil deserunt eos quasi cupiditate. A inventore et molestiae natus.',
            ),
            _buildFeatureListContainer(
              iconShape:
                  'M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9h13.5A2.25 2.25 0 0 1 21 11.25v7.5m-9-6h.008v.008H12v-.008ZM12 15h.008v.008H12V15Zm0 2.25h.008v.008H12v-.008ZM9.75 15h.008v.008H9.75V15Zm0 2.25h.008v.008H9.75v-.008ZM7.5 15h.008v.008H7.5V15Zm0 2.25h.008v.008H7.5v-.008Zm6.75-4.5h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V15Zm0 2.25h.008v.008h-.008v-.008Zm2.25-4.5h.008v.008H16.5v-.008Zm0 2.25h.008v.008H16.5V15Z',
              term: 'Task scheduling',
              description:
                  'Et quod quaerat dolorem quaerat architecto aliquam accusantium. Ex adipisci et doloremque autem quia quam. Quis eos molestiae at iure impedit.',
            ),
          ],
        ),
      ],
    );
  }

  Component _buildFeatureListContainer({
    required String iconShape,
    required String term,
    required String description,
  }) {
    return div(
      classes: 'flex flex-col',
      [
        DomComponent(
          tag: 'dt',
          classes: 'text-base/7 font-semibold text-white',
          children: [
            div(
              classes:
                  'mb-6 flex size-10 items-center justify-center rounded-lg bg-indigo-500',
              [
                svg(
                  classes: 'size-6 text-white',
                  attributes: {
                    'fill': 'none',
                    'stroke-width': '1.5',
                    'stroke': 'currentColor',
                    'aria-hidden': 'true',
                    'data-slot': 'icon',
                  },
                  viewBox: '0 0 24 24',
                  [
                    path(
                      attributes: {
                        'stroke-linecap': 'round',
                        'stroke-linejoin': 'round',
                      },
                      d: iconShape,
                      [],
                    ),
                  ],
                ),
              ],
            ),
            Text(term),
          ],
        ),
        DomComponent(
          tag: 'dd',
          classes: 'mt-1 flex flex-auto flex-col text-base/7 text-gray-300',
          children: [
            p(
              classes: 'flex-auto',
              [text(description)],
            ),
            p(
              classes: 'mt-6',
              [
                a(
                  classes: 'text-sm/6 font-semibold text-indigo-400',
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
