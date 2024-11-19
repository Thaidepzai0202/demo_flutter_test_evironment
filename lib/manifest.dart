import 'package:configuration/route/route_define.dart';
import 'package:demo_flutter_test_evironment/presentation/home/home_route.dart';
import 'package:demo_flutter_test_evironment/presentation/pay/pay_route.dart';
import 'package:demo_flutter_test_evironment/presentation/sale_handbook/sale_handbook_route.dart';

generateRoutes(){
  SaleHandbookRoute();
  HomeRoute();
  PayRoute();
}

final Map<String, RouteDefine> mapRoutes = {};
