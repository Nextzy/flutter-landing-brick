import 'package:app/lib.dart';

class StatsSection extends AppStatelessComponent {
  const StatsSection({
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
}
