import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
// import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/components/background.dart';

class AnpView extends StatelessWidget {
  const AnpView({Key? key}) : super(key: key);
  static const logo = 'assets/logo.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          // appBar: appBarComponent('ANP'),
          backgroundColor: Colors.transparent,
          appBar: appBarComponent('ANP'),
          body: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Wrap(
              // spacing: 20,
              runSpacing: 20,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Ponto de Abastecimento',
                      style: TextStyle(
                          color: Color(0xFF435747),
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFb9c9c1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Revenda de Combustíveis',
                      style: TextStyle(
                          color: Color(0xFF435747),
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFb9c9c1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      'Revenda de GLP',
                      style: TextStyle(
                          color: Color(0xFF435747),
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFb9c9c1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
