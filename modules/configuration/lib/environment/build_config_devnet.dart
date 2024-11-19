import 'package:configuration/environment/build_config.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BuildConfig,env: [CustomEnv.devnet])
class BuildConfigDevNet extends BuildConfig{
  @override
  String get host => "host_devnet";

  @override
  String get hostSocketIO => "host socket IO devnet";

  @override
  String get hostWeb =>"host web devnet";

}