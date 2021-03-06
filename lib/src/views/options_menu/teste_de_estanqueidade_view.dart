import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/components/background.dart';

class TesteDeEstanqueidadeView extends StatelessWidget {
  const TesteDeEstanqueidadeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBarComponent('Teste de Estanqueidade'),
          body: Center(
            child: Text(
              'Nenhum documento baixado ainda!\nTeste de Estanqueidade',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
