import 'package:network/lib.dart';

class UnauthorizedException extends ClientErrorException {
  const UnauthorizedException({
    super.statusCode = 401,
    super.type,
    super.statusMessage,
    super.errorMessage,
    super.developerMessage,
    super.response,
    super.requestOptions,
    super.stackTrace,
    super.errors,
  });
}
