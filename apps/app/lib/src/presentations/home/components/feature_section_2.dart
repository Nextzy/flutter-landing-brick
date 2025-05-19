import 'package:app/lib.dart';

class FeatureSection2 extends AppStatelessComponent {
  const FeatureSection2({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) => [
        _buildBody(),
      ];

  Component _buildBody() {
    return div([]);
  }
}
