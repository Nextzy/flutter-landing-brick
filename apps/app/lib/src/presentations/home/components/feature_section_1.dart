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
}
