// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:app/src/presentations/about/pages/about_page.dart' as prefix0;
import 'package:app/src/presentations/home/pages/home_page.dart' as prefix1;
import 'package:app/application.dart' as prefix2;
import 'package:design_system/components/alerts/inline_alert.dart' as prefix3;
import 'package:design_system/components/avatars/circle_avatar.dart' as prefix4;
import 'package:design_system/components/avatars/squared_avatar.dart'
    as prefix5;
import 'package:design_system/components/buttons/button.dart' as prefix6;
import 'package:design_system/components/buttons/icon_button.dart' as prefix7;
import 'package:design_system/components/buttons/split_button.dart' as prefix8;
import 'package:design_system/components/layouts/page_layout.dart' as prefix9;
import 'package:design_system/components/navigations/top_navigation.dart'
    as prefix10;
import 'package:design_system/components/navigations/top_navigation_menu.dart'
    as prefix11;
import 'package:design_system/components/text_inputs/text_area.dart'
    as prefix12;
import 'package:design_system/components/texts/text.dart' as prefix13;
import 'package:design_system/components/counter.dart' as prefix14;
import 'package:design_system/components/header.dart' as prefix15;
import 'package:design_system/components/slot.dart' as prefix16;

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
        ...prefix3.AppInlineAlert.styles,
        ...prefix4.AppCircleAvatarState.styles,
        ...prefix5.AppSquaredAvatarState.styles,
        ...prefix6.AppButtonState.styles,
        ...prefix7.AppIconButtonState.styles,
        ...prefix8.AppSplitButtonState.styles,
        ...prefix9.PageLayout.styles,
        ...prefix10.AppTopNavigation.styles,
        ...prefix11.AppTopNavigationMenuState.styles,
        ...prefix12.AppTextAreaState.styles,
        ...prefix13.AppText.styles,
        ...prefix14.CounterState.styles,
        ...prefix15.Header.styles,

        ...prefix16.Slot.styles,
      ],
);
