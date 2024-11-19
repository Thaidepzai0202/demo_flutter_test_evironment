import 'package:configuration/environment/build_config.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BuildConfig,env: [CustomEnv.pilot])
class BuildConfigPilot extends BuildConfig{
  @override
  String get host => "host_pilot";

  @override
  String get hostSocketIO => "host socket IO pilot";

  @override
  String get hostWeb =>"host web pilot";

}