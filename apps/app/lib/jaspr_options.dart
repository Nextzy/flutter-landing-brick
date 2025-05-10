// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:app/src/presentations/about/pages/about_page.dart' as prefix0;
import 'package:app/src/presentations/home/pages/home_page.dart' as prefix1;
import 'package:app/application.dart' as prefix2;
import 'package:design_system/widgets/counter.dart' as prefix3;
import 'package:design_system/widgets/header.dart' as prefix4;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix0.AboutPage: ClientTarget<prefix0.AboutPage>(
      'src/presentations/about/pages/about_page',
    ),

    prefix1.HomePage: ClientTarget<prefix1.HomePage>(
      'src/presentations/home/pages/home_page',
    ),
  },
  styles:
      () => [
        ...prefix0.AboutPage.styles,
        ...prefix2.Application.styles,
        ...prefix3.CounterState.styles,
        ...prefix4.Header.styles,
      ],
);
