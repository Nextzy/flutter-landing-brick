import 'package:data/lib.dart';

part 'generated/token_response.g.dart';

@JsonSerializable()
class RemoteAuthenticationResponse {
  const RemoteAuthenticationResponse({
    required this.token,
    required this.refreshToken,
  });

  final String? token;
  final String? refreshToken;

  factory RemoteAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoteAuthenticationResponseFromJson(json);
}
