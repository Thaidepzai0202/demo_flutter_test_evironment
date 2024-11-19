// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientHeader _$ClientHeaderFromJson(Map<String, dynamic> json) => ClientHeader(
      deviceId: json['deviceId'] as String?,
      function: json['function'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$ClientHeaderToJson(ClientHeader instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('language', instance.language);
  writeNotNull('deviceId', instance.deviceId);
  writeNotNull('function', instance.function);
  return val;
}
