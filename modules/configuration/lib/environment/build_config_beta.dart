import 'package:configuration/environment/build_config.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BuildConfig,env: [CustomEnv.beta])
class BuildConfigBeta extends BuildConfig{
  @override
  String get host => "host_beta";

  @override
  String get hostSocketIO => "host socket IO beta";

  @override
  String get hostWeb =>"host web beta";

}