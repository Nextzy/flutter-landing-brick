import 'package:jaspr/jaspr.dart';

enum WidgetSize { xxs, xs, sm, md, lg, xl, xxl }

enum FontSize { s10, s12, s14, s16, s18, s24, s36, custom }

enum FontType { header, running, code, ui, table }

enum FontColor {
  brandPrimary,
  brandSecondary,
  brandTertiary,
  primary,
  primaryInverse,
  primaryOnColor,
  secondary,
  secondaryInverse,
  secondaryOnColor,
  tertiary,
  tertiaryInverse,
  tertiaryOnColor,
}

enum ThemeMode {
  /// Use either the light or dark theme based on what the user has selected in
  /// the system settings.
  system,

  /// Always use the light mode regardless of system preference.
  light,

  /// Always use the dark mode (if available) regardless of system preference.
  dark;

  @decoder
  static ThemeMode fromJson(Map<String, dynamic> json) =>
      switch (json['mode']) {
        'system' => system,
        'light' => light,
        'dark' => dark,
        _ => system,
      };

  @encoder
  Map<String, dynamic> toJson() => switch (this) {
        ThemeMode.system => {'mode': 'system'},
        ThemeMode.light => {'mode': 'light'},
        ThemeMode.dark => {'mode': 'dark'},
      };
}
