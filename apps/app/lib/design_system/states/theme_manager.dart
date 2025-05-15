import 'package:app/lib.dart';

class ThemeManager extends StatefulComponent {
  const ThemeManager({
    required this.child,
    this.initialThemeMode = ThemeMode.system,
    super.key,
  });

  final Component child;
  final ThemeMode initialThemeMode;

  @override
  State<ThemeManager> createState() => ThemeManagerState();
}

class ThemeManagerState extends State<ThemeManager> {
   ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    // _themeMode = component.initialThemeMode;
    //
    // // Initialize theme based on system preference if needed
    // if (_themeMode == ThemeMode.system && kIsWeb) {
    //   _isDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
    //
    //   // Listen for system theme changes
    //   window.matchMedia('(prefers-color-scheme: dark)').addListener((event) {
    //     if (_themeMode == ThemeMode.system) {
    //       setState(() {
    //         _isDark = event.matches;
    //         _applyTheme();
    //       });
    //     }
    //   });
    // } else {
    //   _isDark = _themeMode == ThemeMode.dark;
    // }

    _applyTheme();
  }

  void toggleTheme() {
    // setState(() {
    //   if (_themeMode == ThemeMode.system) {
    //     _themeMode = _isDark ? ThemeMode.light : ThemeMode.dark;
    //     _isDark = !_isDark;
    //   } else {
    //     _isDark = !_isDark;
    //     _themeMode = _isDark ? ThemeMode.dark : ThemeMode.light;
    //   }
    //   _applyTheme();
    // });
  }

  void _applyTheme() {
    if (kIsWeb) {
      // final document = window.document;
      // final html = document.documentElement;
      //
      // if (_isDark) {
      //   html?.classList.add('dark');
      //   // Set CSS variable to control theme
      //   html?.style.setProperty('--misc-dark-mode', 'true');
      // } else {
      //   html?.classList.remove('dark');
      //   html?.style.setProperty('--misc-dark-mode', 'false');
      // }
    }
  }

  @override
  Iterable<Component> build(BuildContext context) => [
        ThemeProvider(
          themeMode: _themeMode,
          toggleTheme: toggleTheme,
          child: component.child,
        ),
      ];
}
