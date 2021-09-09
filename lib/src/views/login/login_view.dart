import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';
// import 'package:protege/src/routes.dart';

class LoginView extends StatefulWidget {
  static const logo = 'assets/logo.png';
  // static const background = 'assets/background.png';

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 32),
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(LoginView.logo),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, bottom: 6.0),
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
                    SizedBox(
                      height: 28.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, bottom: 6.0),
                            child: Text(
                              'Senha: ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF566141),
                              ),
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
                                  Icons.lock,
                                  size: 28,
                                  color: Color(0xFF566141),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    // color: Theme.of(context).primaryColorDark,
                                    color: Color(0xFF566141),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                                border: InputBorder.none,
                                hintText: 'Senha',
                              ),
                              autofocus: false,
                              obscureText: _passwordVisible,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 4),
                            child: Container(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                    primary: Color(0xFF566141)),
                                child: Text('Esqueceu sua senha?'),
                                onPressed: () => {
                                  Navigator.of(context)
                                      .pushNamed('FORGOT_PASSWORD_VIEW')
                                },
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
                                  onPressed: () => {
                                    Navigator.of(context)
                                        .pushNamed('HOME_VIEW'),
                                  },
                                  child: Text('Entrar'),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF566141),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      padding: EdgeInsets.only(
                                          left: 125,
                                          top: 18,
                                          right: 125,
                                          bottom: 18),
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 73,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Container(
                                          height: 3.0,
                                          width: 100.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        // color: Colors.blue,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: TextStyle(
                                              fontSize: 20,
                                            ),
                                            primary: Color(0xFF566141),
                                          ),
                                          child: Text('Cadastrar'),
                                          onPressed: () => {
                                            Navigator.of(context)
                                                .pushNamed('REGISTER_VIEW'),
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ou',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 35,
                                      // color: Colors.blue,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          textStyle: TextStyle(
                                            fontSize: 20,
                                          ),
                                          primary: Color(0xFF566141),
                                        ),
                                        child: Text('Visitar'),
                                        onPressed: () => {
                                          Navigator.of(context)
                                              .pushNamed('VISIT_VIEW'),
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                        height: 3.0,
                                        width: 100.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Container(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Color(0xFFF566141),
                                    fontWeight: FontWeight.w600),
                                text:
                                    'Ao criar uma conta, voce concorda com a Politica de privacidade e com os termos de usos da Protege',
                              ),
                              textAlign: TextAlign.center,
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
