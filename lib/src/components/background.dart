import 'package:flutter/material.dart';

class BackgroundComponent extends StatefulWidget {
  // BackgroundComponent({Key? key}) : super(key: key);

  @override
  _BackgroundComponentState createState() => _BackgroundComponentState();
}

class _BackgroundComponentState extends State<BackgroundComponent> {
  static const background = 'assets/background.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(background), fit: BoxFit.cover
            // fit: BoxFit.fitHeight,
            ),
      ),
    );
  }
}
