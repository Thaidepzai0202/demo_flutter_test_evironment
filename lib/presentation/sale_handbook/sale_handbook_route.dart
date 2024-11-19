import 'package:configuration/route/lvt_router.dart';
import 'package:configuration/route/route_define.dart';
import 'package:demo_flutter_test_evironment/presentation/sale_handbook/screen/sale_handbook_screen.dart';

class SaleHandbookRoute extends RouteDefine {
  @override
  Path initRoute(arguments) => Path(builder: (_) => SaleHandbookScreen());

  static push() {
    LVTRouter.push<SaleHandbookRoute>();
  }
}
