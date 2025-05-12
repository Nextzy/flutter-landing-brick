import 'package:core/lib.dart';

abstract class PageState<STATE extends AppStatefulPage> extends State<STATE> {
  FullWidgetState _state = FullWidgetState.normal; //
  FullWidgetState get state => _state; //
  set state(FullWidgetState value) {
    _state = value;
  }

  @override
  void initState() {
    _state = FullWidgetState.normal;
    super.initState();
  }
}
