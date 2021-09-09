import 'package:flutter/material.dart';
import 'package:protege/src/components/documents_component.dart';
import 'package:protege/src/components/home_component.dart';
import 'package:protege/src/components/notifications_components.dart';
// import 'package:persistent_bottom/app.dart';
// import 'package:persistent_bottom/bottom_navigation.dart';

// class TabNavigatorRoutes {
//   static const String root = '/';
//   static const String detail = '/detail';
// }

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget? childView;
    if (tabItem == "Home")
      childView = HomeComponent();
    else if (tabItem == "Documents")
      childView = DocumentsComponents();
    else if (tabItem == "Notifications") childView = NotificationsComponents();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => childView!);
      },
    );
  }
}
