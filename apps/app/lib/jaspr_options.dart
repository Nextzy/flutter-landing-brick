// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:app/design_system/components/alerts/inline_alert.dart'
    as prefix0;
import 'package:app/design_system/components/avatars/circle_avatar.dart'
    as prefix1;
import 'package:app/design_system/components/avatars/squared_avatar.dart'
    as prefix2;
import 'package:app/design_system/components/buttons/button.dart' as prefix3;
import 'package:app/design_system/components/buttons/icon_button.dart'
    as prefix4;
import 'package:app/design_system/components/buttons/split_button.dart'
    as prefix5;
import 'package:app/design_system/components/layouts/page_layout.dart'
    as prefix6;
import 'package:app/design_system/components/navigations/top_navigation.dart'
    as prefix7;
import 'package:app/design_system/components/navigations/top_navigation_menu.dart'
    as prefix8;
import 'package:app/design_system/components/counter.dart' as prefix9;
import 'package:app/design_system/components/header.dart' as prefix10;
import 'package:app/design_system/components/slot.dart' as prefix11;
import 'package:app/src/presentations/about/pages/about_page.dart' as prefix12;
import 'package:app/src/presentations/home/pages/home_page.dart' as prefix13;
import 'package:app/application.dart' as prefix14;

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
    prefix12.AboutPage: ClientTarget<prefix12.AboutPage>(
      'src/presentations/about/pages/about_page',
    ),

    prefix13.HomePage: ClientTarget<prefix13.HomePage>(
      'src/presentations/home/pages/home_page',
    ),
  },
  styles:
      () => [
        ...prefix0.AppInlineAlert.styles,
        ...prefix1.AppCircleAvatarState.styles,
        ...prefix2.AppSquaredAvatarState.styles,
        ...prefix3.AppButtonState.styles,
        ...prefix4.AppIconButtonState.styles,
        ...prefix5.AppSplitButtonState.styles,
        ...prefix6.PageLayout.styles,
        ...prefix7.AppTopNavigation.styles,
        ...prefix8.AppTopNavigationMenuState.styles,

        ...prefix9.CounterState.styles,
        ...prefix10.Header.styles,

        ...prefix11.Slot.styles,
        ...prefix12.AboutPage.styles,
        ...prefix14.Application.styles,
      ],
);
