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
        section([
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
                      [text('Demo เดโม')]),
                  p(
                      classes: 'text-slate-500',
                      [text('Welcome to landing page!')]),
                ]),
              ]),
          div(styles: Styles(height: 100.px), []),
          // const Counter(),
          div(
            classes: 'text-2xl font-normal text-blue-500',
            [text('test1')],
          ),
          AppText(
            'hello world',
            classes: 'text-3xl font-normal text-red-500',
          ),
          AppButton(label: 'label'),
        ]),
      ];
}
