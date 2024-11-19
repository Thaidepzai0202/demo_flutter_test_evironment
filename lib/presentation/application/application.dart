import 'package:configuration/route/route_define.dart';
import 'package:demo_flutter_test_evironment/manifest.dart';
import 'package:demo_flutter_test_evironment/presentation/home/home_route.dart';
import 'package:demo_flutter_test_evironment/presentation/sale_handbook/sale_handbook_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styles/style/style.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) =>
          manifest(generateRoutes, settings, mapRoutes),
      // initialRoute: '$SaleHandbookRoute',
      initialRoute: '$HomeRoute',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: brightness),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }

}
