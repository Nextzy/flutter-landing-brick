import 'package:design_system/lib.dart';

class DesignSystemStyle {
  @css
  static final styles = [
    ...CounterState.styles,
    ...Header.styles,
  ];
}