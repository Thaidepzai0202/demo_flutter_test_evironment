import 'package:configuration/environment/build_config.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BuildConfig,env: [CustomEnv.prod])
class BuildConfigProd extends BuildConfig{
  @override
  String get host => "host_prod";

  @override
  String get hostSocketIO => "host socket IO prod";

  @override
  String get hostWeb =>"host web prod";

}