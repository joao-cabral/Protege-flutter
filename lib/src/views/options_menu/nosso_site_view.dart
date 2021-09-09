import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/components/background.dart';

class NossoSiteView extends StatelessWidget {
  const NossoSiteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBarComponent('Nosso Site'),
          body: Center(
            child: Text(
              'Nenhum documento baixado ainda!\nNossoSite',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
