import 'package:data/lib.dart';

class AuthenticationRpcService extends RpcService {
  const AuthenticationRpcService(
    super.dio, {
    this.path = '/auth',
    super.baseUrl = 'https://api-brick.nextzy.com/v1',
    // super.baseUrl = 'http://127.0.0.1:3658/m1/830561-810297-default/v1',
  });

  final String path;

  Future<JsonRpcResponse<RemoteAuthenticationResponse, ErrorResponse>>
      signInWithEmailPassword({
    required String email,
    required String password,
    String? requestId,
  }) =>
          request(
            path,
            method: 'signInWithEmailPassword',
            id: requestId,
            params: RemoteSignInWithEmailBody(
              email: email,
              password: password,
            ).toJson(),
            fromResponseJson: RemoteAuthenticationResponse.fromJson,
            fromErrorJson: ErrorResponse.fromJson,
          );
}
