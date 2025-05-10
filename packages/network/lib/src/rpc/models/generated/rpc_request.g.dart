// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../rpc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonRpcRequest _$JsonRpcRequestFromJson(Map<String, dynamic> json) =>
    JsonRpcRequest(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'] as String?,
      method: json['method'] as String,
      params: json['params'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$JsonRpcRequestToJson(JsonRpcRequest instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'method': instance.method,
      'params': instance.params,
    };
