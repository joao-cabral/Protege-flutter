import 'dart:async';

import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';
import 'package:protege/src/routes.dart';

class SplashScreenView extends StatefulWidget {
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  static const logo_splash_screen = 'assets/logo_splash_screen.png';

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.of(context).pushNamed('LOGIN_VIEW'));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Center(
                // child: Text('testo'),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          'SEJA BEM VINDO AO',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        // color: Colors.amber,
                        width: 300,
                        height: 140,
                        child: Image.asset(logo_splash_screen),
                      ),
                    ),
                    Container(
                      child: Text(
                        "O controle do licenciamento ambiental da sua empresa, palma das suas mãos.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(child: CircularProgressIndicator())
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
