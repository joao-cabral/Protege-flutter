import 'package:flutter/material.dart';
import 'package:protege/src/components/background.dart';

class DocumentsComponents extends StatefulWidget {
  // DocumentsComponents({Key? key}) : super(key: key);

  @override
  _DocumentsComponentsState createState() => _DocumentsComponentsState();
}

class _DocumentsComponentsState extends State<DocumentsComponents> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundComponent(),
        Scaffold(
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
