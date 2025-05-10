import 'package:data/lib.dart';

class AppRepository {
  AppRepository({
    AuthenticationRemoteDatasources? authRemoteDatasource,
    DatabaseLocalDataSources? localDatasource,
  })  : _authRemoteDatasource =
            authRemoteDatasource ?? AuthenticationRemoteDatasources(),
        _localDatasource = localDatasource ?? DatabaseLocalDataSources();

  final AuthenticationRemoteDatasources _authRemoteDatasource;
  final DatabaseLocalDataSources _localDatasource;

  Stream<Either<AppException, bool>> signInWithEmailPassword({
    required String email,
    required String password,
  }) =>
      DatasourceBoundState.asStream<RemoteAuthenticationResponse, bool>(
        createCallFuture: () => _authRemoteDatasource.signInWithEmailPassword(
          email: email,
          password: password,
        ),
        saveCallResult: (response) => _localDatasource.saveToken(
          token: response.token,
          refreshToken: response.refreshToken,
        ),
        processResponse: (response) => true,
      ).mapAppException();
}
