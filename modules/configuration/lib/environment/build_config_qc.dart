import 'package:configuration/environment/build_config.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BuildConfig,env: [CustomEnv.qc])
class BuildConfigQc extends BuildConfig{
  @override
  String get host => "host_qc";

  @override
  String get hostSocketIO => "host socket IO qc";

  @override
  String get hostWeb =>"host web qc";

}