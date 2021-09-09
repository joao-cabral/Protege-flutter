import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/components/background.dart';
import 'package:protege/src/components/tab_navigator_component.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String _currentPage = "Home";

  // AppBarComponent appBarComponent = AppBarComponent();

  List<String> pageKeys = ["Home", "Documents", "Notifications"];
  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Home": GlobalKey<NavigatorState>(),
    "Documents": GlobalKey<NavigatorState>(),
    "Notifications": GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;

  void _selectTab(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
        // appBarComponent.setTitleAppBar(_currentPage);
      });
    }
  }

  // @override
  // void initState() {
  //   appBarComponent.setTitleAppBar(_currentPage);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != "Home") {
            _selectTab("Home", 1);

            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        // appBar: appBarComponent.appBar(),
        body: Stack(children: [
          BackgroundComponent(),
          _buildOffstageNavigator("Home"),
          _buildOffstageNavigator("Documents"),
          _buildOffstageNavigator("Notifications"),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF545e29),
          selectedItemColor: Colors.black,
          unselectedItemColor: Color(0xFF98a271),
          onTap: (int index) {
            _selectTab(pageKeys[index], index);
          },
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.picture_as_pdf), label: 'Documentos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notificações'),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}
