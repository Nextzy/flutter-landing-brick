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
        _buildTopContent(),
        _buildStatList(),
      ],
    );
  }

  Component _buildTopContent() {
    return div(
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
    );
  }

  Component _buildStatList() {
    return dl(
      classes:
          'mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-10 text-white sm:mt-20 sm:grid-cols-2 sm:gap-y-16 lg:mx-0 lg:max-w-none lg:grid-cols-4',
      [
        _buildStatListContainer(
          term: 'Developers on the platform',
          description: '8,000+',
        ),
        _buildStatListContainer(
          term: 'Daily requests',
          description: '900m+',
        ),
        _buildStatListContainer(
          term: 'Uptime guarantee',
          description: '99.9%',
        ),
        _buildStatListContainer(
          term: 'Projects deployed',
          description: '12m',
        ),
      ],
    );
  }

  Component _buildStatListContainer({
    required String term,
    required String description,
  }) {
    return div(
      classes: 'flex flex-col gap-y-3 border-l border-white/10 pl-6',
      [
        dt(
          classes: 'text-sm/6',
          [
            Text(term),
          ],
        ),
        dd(
          classes: 'order-first text-3xl font-semibold tracking-tight',
          [
            Text(description),
          ],
        ),
      ],
    );
  }
}
