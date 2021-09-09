import 'package:flutter/material.dart';
import 'package:protege/src/components/appbar_component.dart';
import 'package:protege/src/components/background.dart';

class NossoContatoView extends StatelessWidget {
  const NossoContatoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBarComponent('Nosso Contato'),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, bottom: 6.0),
                            child: Text(
                              'Nome:',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFF566141)),
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0xFFd6e0cf),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 28,
                                    color: Color(0xFF566141),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Nome',
                                ),
                                autofocus: false,
                                // obscureText: true,
                              ),
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
                              'E-mail:',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF566141),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0xFFd6e0cf),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    size: 28,
                                    color: Color(0xFF566141),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'E-mail',
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
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
                              'Telefone:',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF566141),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0xFFd6e0cf),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_in_talk,
                                    size: 28,
                                    color: Color(0xFF566141),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Telefone',
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
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
                              'Assunto:',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF566141),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0xFFd6e0cf),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 12.0),
                                  border: InputBorder.none,
                                  hintText: 'Assunto',
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
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
                              'Mensagem:',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF566141),
                              ),
                            ),
                          ),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFd6e0cf),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: TextField(
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 12.0),
                                  border: InputBorder.none,
                                  hintText: 'Sua mensagem',
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      // buttonMinWidth: 200.0,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            onPressed: () => {},
                            child: Text('Enviar'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF566141),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                padding: EdgeInsets.only(
                                    left: 110, top: 18, right: 110, bottom: 18),
                                textStyle: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 30.0,
                    // ),
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
