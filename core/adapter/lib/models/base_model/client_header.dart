import 'package:json_annotation/json_annotation.dart';

part 'client_header.g.dart';

@JsonSerializable(includeIfNull: false)
class ClientHeader {
  String? language;
  String? deviceId;
  String? function;

  ClientHeader({this.deviceId, this.function, this.language});

  factory ClientHeader.fromJson(Map<String, dynamic> json) =>
      _$ClientHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$ClientHeaderToJson(this);
}
