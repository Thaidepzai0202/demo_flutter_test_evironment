import 'package:json_annotation/json_annotation.dart';

part 'body_header.g.dart';

@JsonSerializable(includeIfNull: false)
class BodyHeader {
  String? userId;
  String? deviceName;
  String? userName;
  String? productCode;
  String? productId;
  String? sessionId;
  String? transId;

  BodyHeader({
    this.deviceName,
    this.productCode,
    this.productId,
    this.sessionId,
    this.transId,
    this.userId,
    this.userName,
  });

  factory BodyHeader.fromJson(Map<String, dynamic> json) =>
      _$BodyHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$BodyHeaderToJson(this);
}
