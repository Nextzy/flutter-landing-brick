import 'package:core/lib.dart';

abstract class ComponentState<STATE extends AppStatefulComponent>
    extends State<STATE> {
  WidgetSize get size => component.size; //
  ThemeMode? get themeMode => component.themeMode; //

  FullWidgetState _state = FullWidgetState.normal; //
  FullWidgetState get state => _state; //
  set state(FullWidgetState value) {
    _state = value;
  }

  bool _focused = false; //
  bool get focused => _focused; //
  set focused(bool value) {
    _focused = value;
  }

  @override
  void initState() {
    _state = component.state;
    _focused = component.focused;
    super.initState();
  }
}
