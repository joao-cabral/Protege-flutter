import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/components/background.dart';

class AvcbView extends StatelessWidget {
  const AvcbView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          // appBar: appBarComponent('ANP'),
          backgroundColor: Colors.transparent,
          appBar: appBarComponent('AVCB'),
          body: Center(
            child: Text("Aqui fica a lista de pdf's"),
          ),
        ),
      ],
    );
  }
}
