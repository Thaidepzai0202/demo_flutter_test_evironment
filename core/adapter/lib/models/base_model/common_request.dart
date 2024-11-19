import 'package:adapter/models/base_model/body_header.dart';
import 'package:adapter/models/base_model/client_header.dart';

class CommonRequest<T extends BaseRequestBody> {
  ClientHeader? clientHeader;
  T? body;

  CommonRequest({this.body});

  setFunction(String function) {
    clientHeader ??= ClientHeader();
    clientHeader?.function = function;
  }

  setDeviceId(String deviceId) {
    clientHeader ??= ClientHeader();
    clientHeader?.deviceId = deviceId;
  }
}

abstract class BaseRequestBody {
  BodyHeader? header;

  Map<String, dynamic> toJson() {
    return {
      'header': header != null ? (header?.toJson()) : null,
    };
  }

  setUserName(String? username) {
    header ??= BodyHeader();
    header?.userName = username;
  }

  setUserID(String? userId) {
    header ??= BodyHeader();
    header?.userId = userId;
  }

  setDeviceName(String? deviceName) {
    header ??= BodyHeader();
    header?.deviceName = deviceName;
  }

  setProductCode(String? productCode) {
    header ??= BodyHeader();
    header?.productCode = productCode;
  }

  setProductID(String? productId) {
    header ??= BodyHeader();
    header?.productId = productId;
  }
}
