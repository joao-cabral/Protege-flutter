import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';
import 'package:protege/src/routes.dart';

class VisitView extends StatefulWidget {
  // ForgetPassword({Key? key}) : super(key: key);

  @override
  _VisitViewState createState() => _VisitViewState();
}

class _VisitViewState extends State<VisitView> {
  static const logo = 'assets/logo.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 32),
                        child: Center(
                          child: Text(
                            'Caro Usuário',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '''Comunicamos que, as infomrcoes contidadas na opcao visitante, sao apenas ILUSTRATIVAS. Nao possui nenhuma validade junto ao orgao ambiental ou em quelquer outro lugar que sejam apresentados.''',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "Essa opcao foi criada com o intuito de auxiliar o usuario a entender como este app funciona.",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "Para conhecer mais sobre nossos servicos, acesse nosso portilio no site da Protege Engenharia.",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: Text('Continuar'),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF8c8e89),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
