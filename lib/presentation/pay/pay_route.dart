import 'package:configuration/route/lvt_router.dart';
import 'package:configuration/route/route_define.dart';
import 'package:demo_flutter_test_evironment/presentation/pay/screen/pay_screen.dart';

class PayRoute extends RouteDefine{
  @override
  Path initRoute(arguments) =>Path(builder: (_) => PayScreen());

  static push(){
    LVTRouter.push<PayRoute>();
  }
}