import 'package:design_system/lib.dart';

class AppCircleAvatar extends AppStatefulComponent {
  const AppCircleAvatar({
    super.key,
    super.size,
    super.state,
    super.themeMode,
    super.focused,
    this.style = AvatarStyle.subtie,
    this.image,
    this.initials,
    this.showBadge = false,
    this.statusDot = false,
  });

  final AvatarStyle style;
  final String? image;
  final String? initials;
  final bool showBadge;
  final bool statusDot;

  @override
  State<AppCircleAvatar> createState() => AppCircleAvatarState();
}

class AppCircleAvatarState extends ComponentState<AppCircleAvatar> {
  AvatarStyle get style => component.style; //
  String? get initials => component.initials; //
  bool get showBadge => component.showBadge; //
  bool get statusDot => component.statusDot; //

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield switch (style) {
      AvatarStyle.image => buildImage(context),
      AvatarStyle.filled => buildFilled(context),
      AvatarStyle.subtie => buildSubtie(context),
    };
  }

  Component buildImage(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  Component buildFilled(BuildContext context) {
    // TODO: Handle this case.
    return div([]);
  }

  Component buildSubtie(BuildContext context) {
    // TODO: Handle this case.

    return div([]);
  }

  @css
  static final List<StyleRule> styles = [];
}
