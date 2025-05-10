export 'models/models.dart';
export 'rpc_service.dart';

abstract class JsonRpc {
  const JsonRpc({
    this.jsonrpc = "2.0",
    this.id,
  });

  final String? jsonrpc;
  final String? id;
}
