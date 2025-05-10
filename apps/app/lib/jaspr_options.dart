// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:app/pages/about.dart' as prefix0;
import 'package:app/pages/home.dart' as prefix1;
import 'package:app/pages/styles.dart' as prefix2;
import 'package:app/app.dart' as prefix3;
import 'package:design_system/widgets/counter.dart' as prefix4;
import 'package:design_system/widgets/header.dart' as prefix5;
import 'package:design_system/styles.dart' as prefix6;

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
    prefix0.About: ClientTarget<prefix0.About>('pages/about'),

    prefix1.Home: ClientTarget<prefix1.Home>('pages/home'),
  },
  styles:
      () => [
        ...prefix0.About.styles,
        ...prefix2.PageStyle.styles,
        ...prefix3.App.styles,
        ...prefix4.CounterState.styles,
        ...prefix5.Header.styles,
        ...prefix6.DesignSystemStyle.styles,
      ],
);
