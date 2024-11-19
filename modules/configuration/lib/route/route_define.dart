import 'package:flutter/material.dart';
import 'package:get/get.dart';


final List<RouteDefine> _routes = [];
final List<String> _routeIds = [];


abstract class RouteDefine {
  Path initRoute(dynamic arguments);


  String get routeName => '$runtimeType';


  static List<String> get routeIds => _routeIds;


  RouteDefine() {
    _routes.add(this);
    _routeIds.add('$runtimeType');
  }
}


class Path {
  WidgetBuilder builder;
  Path({required this.builder});
}


MaterialPageRoute? manifest(
    Function generateRoute,
    RouteSettings settings,
    Map<String, RouteDefine> mapRoutes,
    ) {
  if (settings.name?.contains('/') == true) {
    RouteDefine? route = mapRoutes['/'];


    final currentRouteName = Get.currentRoute;
    if (currentRouteName == '${route.runtimeType}') return null;


    return CustomMaterialPageRoute(
      builder: (context) => route.initRoute(null).builder(context),
      settings: RouteSettings(
        name: route!.routeName,
      ),
    );
  } else {
    final Map<String?, WidgetBuilder?> routeBuilders =
    <String, WidgetBuilder>{};


    generateRoute();
    for (int i = 0; i < _routeIds.length; i++) {
      final path = _routes[i].initRoute(
        settings.arguments,
      );


      routeBuilders[_routeIds[i]] = path.builder;
    }
    final Widget Function(BuildContext context)? routeBuilder =
    routeBuilders[settings.name ?? ''];


    bool isAllowSwipeBack = true;
    // if (settings.arguments is Map &&
    //     (settings.arguments as Map)['is_allow_swipe_back'] != null) {
    //   isAllowSwipeBack = (settings.arguments as Map)['is_allow_swipe_back'];
    // }
    if (settings.arguments is Map &&
        (settings.arguments as Map)['is_allow_swipe_back'] != null) {
      final isAllowSwipeBackValue = (settings.arguments as Map)['is_allow_swipe_back'];
      if (isAllowSwipeBackValue is bool) {
        isAllowSwipeBack = isAllowSwipeBackValue;
      }
    }




    return !isAllowSwipeBack
        ? CustomMaterialPageRouteDisableBack(
      builder: (context) => routeBuilder!(context),
      settings: RouteSettings(
        name: settings.name,
        arguments: settings.arguments,
      ),
    )
        : CustomMaterialPageRoute(
      builder: (context) => routeBuilder!(context),
      settings: RouteSettings(
        name: settings.name,
        arguments: settings.arguments,
      ),
    );
  }

}


class CustomMaterialPageRoute extends MaterialPageRoute {
  @override
  @protected
  bool get hasScopedWillPopCallback {
    return false;
  }


  CustomMaterialPageRoute({
    required super.builder,
    super.settings,
    super.maintainState,
    super.fullscreenDialog,
  });
}


class CustomMaterialPageRouteDisableBack extends MaterialPageRoute {
  @override
  @protected
  bool get hasScopedWillPopCallback {
    return true;
  }


  CustomMaterialPageRouteDisableBack({
    required super.builder,
    super.settings,
    super.maintainState,
    super.fullscreenDialog,
  });
}

