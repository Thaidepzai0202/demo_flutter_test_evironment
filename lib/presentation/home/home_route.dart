import 'package:configuration/route/route_define.dart';
import 'package:demo_flutter_test_evironment/presentation/home/screen/home_screen.dart';

class HomeRoute extends RouteDefine {
  @override
  Path initRoute(arguments) => Path(builder: (_) => HomeScreen());


}
