import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';

class NotificationsComponents extends StatefulWidget {
  // NotificationsComponents({Key? key}) : super(key: key);

  @override
  _NotificationsComponentsState createState() =>
      _NotificationsComponentsState();
}

class _NotificationsComponentsState extends State<NotificationsComponents> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              'Nenhum notificação disponível!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
