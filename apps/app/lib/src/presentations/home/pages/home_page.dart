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
      classes: 'bg-gray-900',
      [
        main_(
          [
            HeroSection(),
            LogoCloud(),
            FeatureSection1(),
            FeatureSection2(),
            StatsSection(),
            CtaSection(),
          ],
        ),
        Footer(),
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
