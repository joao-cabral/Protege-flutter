import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';
import 'package:protege/src/routes.dart';

class ForgotPasswordView extends StatefulWidget {
  // ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
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
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(logo),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 6.0),
                              child: Text(
                                'Usuário:',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFF566141)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFd6e0cf),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 28,
                                    color: Color(0xFF566141),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'CPF/CNPJ',
                                ),
                                autofocus: false,
                                // obscureText: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      // buttonMinWidth: 200.0,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            onPressed: () => {},
                            child: Text('Solicitar Nova Senha'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF566141),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                padding: EdgeInsets.only(
                                    left: 70, top: 18, right: 70, bottom: 18),
                                textStyle: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                height: 3.0,
                                width: 100.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // height: 40,
                                // color: Colors.blue,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    primary: Color(0xFF566141),
                                  ),
                                  child: Text('Login'),
                                  onPressed: () => {
                                    Navigator.of(context)
                                        .pushNamed('LOGIN_VIEW')
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                height: 3.0,
                                width: 100.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
