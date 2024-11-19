// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyHeader _$BodyHeaderFromJson(Map<String, dynamic> json) => BodyHeader(
      deviceName: json['deviceName'] as String?,
      productCode: json['productCode'] as String?,
      productId: json['productId'] as String?,
      sessionId: json['sessionId'] as String?,
      transId: json['transId'] as String?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$BodyHeaderToJson(BodyHeader instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('deviceName', instance.deviceName);
  writeNotNull('userName', instance.userName);
  writeNotNull('productCode', instance.productCode);
  writeNotNull('productId', instance.productId);
  writeNotNull('sessionId', instance.sessionId);
  writeNotNull('transId', instance.transId);
  return val;
}
