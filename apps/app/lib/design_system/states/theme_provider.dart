import 'package:app/lib.dart';

class ThemeProvider extends InheritedComponent {
  const ThemeProvider({
    required this.themeMode,
    required this.toggleTheme,
    required super.child,
    super.key,
  });

  final ThemeMode themeMode;
  final void Function() toggleTheme;

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedComponentOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}