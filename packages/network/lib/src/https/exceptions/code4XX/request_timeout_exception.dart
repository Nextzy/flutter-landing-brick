import 'package:network/lib.dart';

class RequestTimeoutException extends ClientErrorException {
  const RequestTimeoutException({
    super.statusCode = 408,
    super.type,
    super.statusMessage,
    super.errorMessage,
    super.developerMessage,
    super.response,
    super.requestOptions,
    super.stackTrace,
    super.errors,
    this.timeout,
  });

  final int? timeout;
}
