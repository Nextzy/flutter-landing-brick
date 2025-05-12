import 'package:design_system/lib.dart';

class AppSquaredAvatar extends AppStatefulComponent {
  const AppSquaredAvatar({
    super.key,
    super.size,
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
  State<AppSquaredAvatar> createState() => AppSquaredAvatarState();
}

class AppSquaredAvatarState extends ComponentState<AppSquaredAvatar> {
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
