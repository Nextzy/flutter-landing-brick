import 'package:app/lib.dart';

class AppRouter {
  static final route = Router(routes: [
    Route(
        path: '/',
        title: 'Home',
        builder: (context, state) => const HomePage()),
    Route(
        path: '/about',
        title: 'About',
        builder: (context, state) => const AboutPage()),
    Route(
        path: '/landing',
        title: 'Landing',
        builder: (context, state) => const HomePage()),
  ]);
}
