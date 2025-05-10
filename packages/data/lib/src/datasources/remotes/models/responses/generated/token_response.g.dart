// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteAuthenticationResponse _$RemoteAuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    RemoteAuthenticationResponse(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$RemoteAuthenticationResponseToJson(
        RemoteAuthenticationResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
