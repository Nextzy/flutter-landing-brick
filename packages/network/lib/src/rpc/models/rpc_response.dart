import 'package:network/lib.dart';

part 'generated/rpc_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class JsonRpcResponse<T, E> extends JsonRpc {
  const JsonRpcResponse({
    required super.jsonrpc,
    this.result,
    this.error,
    required super.id,
  });

  final T? result;
  final E? error;

  factory JsonRpcResponse.fromJson(Map<String, dynamic> json,
          T Function(Object?) fromJsonT, E Function(Object?) fromJsonE) =>
      _$JsonRpcResponseFromJson(
        json,
        fromJsonT,
        fromJsonE,
      );

  bool get hasResult => result != null;

  bool get isError => error != null;
}
