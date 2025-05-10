import 'package:network/lib.dart';

class ServiceUnavailableException extends ServerErrorException {
  const ServiceUnavailableException({
    super.statusCode = 503,
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
