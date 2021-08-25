import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';

class AnpView extends StatelessWidget {
  const AnpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          appBar: AppBar(
            title: Text('ANP'),
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              'Nenhum documento baixado ainda!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
