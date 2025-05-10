import 'package:network/lib.dart';

part 'generated/rpc_request.g.dart';

@JsonSerializable()
class JsonRpcRequest extends JsonRpc {
  const JsonRpcRequest({
    required super.jsonrpc,
    super.id,
    required this.method,
    this.params,
  });

  final String method;
  final Map<String, dynamic>? params;

  factory JsonRpcRequest.fromJson(Map<String, dynamic> json) =>
      _$JsonRpcRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JsonRpcRequestToJson(this);
}
