import 'package:data/lib.dart';

part 'generated/sign_in_with_email_body.g.dart';

@JsonSerializable()
class RemoteSignInWithEmailBody {
  const RemoteSignInWithEmailBody({
    required this.email,
    required this.password,
  });

  final String? email;
  final String? password;

  factory RemoteSignInWithEmailBody.fromJson(Map<String, dynamic> json) =>
      _$RemoteSignInWithEmailBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteSignInWithEmailBodyToJson(this);
}
