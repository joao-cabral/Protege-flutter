import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';
import 'package:protege/src/components/documents_component.dart';
import 'package:protege/src/components/home_component.dart';
import 'package:protege/src/components/notifications_components.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static const logo = 'assets/logo.png';
  int _indexComponent = 0;

  final List<Widget> _componentsBottomBar = [
    HomeComponent(),
    DocumentsComponents(),
    NotificationsComponents(),
  ];

  final List<String> _listTitleAppBar = ['Home', 'Documentos', 'Notificações'];

  void onTabTapped(int index) {
    setState(() {
      _indexComponent = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                // width: 100,
                // height: 100,
                child: Image.asset(logo),
              ),
            ),
            title: Text(
              '${_listTitleAppBar[_indexComponent]}',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                padding: EdgeInsets.only(right: 16),
              )
            ],
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF545e29),
          ),
          backgroundColor: Colors.transparent,
          body: _componentsBottomBar[_indexComponent],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFF545e29),
            selectedItemColor: Colors.black,
            unselectedItemColor: Color(0xFF98a271),
            currentIndex: _indexComponent,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.picture_as_pdf), label: 'Documentos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Notificações'),
            ],
          ),
        ),
      ],
    );
  }
}
