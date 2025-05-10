import 'package:network/lib.dart';

part 'generated/error_response.g.dart';

@JsonSerializable()
class ErrorResponse {
  const ErrorResponse({
    this.code,
    this.message,
    this.userMessage,
    this.developerMessage,
  });

  final int? code;
  final String? message;
  final String? userMessage;
  final String? developerMessage;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
