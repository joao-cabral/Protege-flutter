import 'package:flutter/material.dart';
import 'package:protege/src/routes.dart';

class CustomButtomComponent extends StatelessWidget {
  final String imageAsset;
  final String routeName;

  const CustomButtomComponent(
      {Key? key, required this.imageAsset, required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      // width: 40,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(routeName);
        }, // Handle your callback.
        borderRadius: BorderRadius.circular(15),
        splashColor: Colors.brown.withOpacity(0.5),
        child: Ink(
          // height: 30,
          // width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );

    // return ElevatedButton(
    //   onPressed: () => {},
    //   child: Container(
    //     // height: 100,
    //     child: Container(
    //       decoration: BoxDecoration(
    //           image: DecorationImage(
    //         image: AssetImage(imageAsset),
    //         fit: BoxFit.fill,
    //       )),
    //     ),
    //   ),
    //   style: ElevatedButton.styleFrom(
    //       primary: Color(0xFFb4c8c6),
    //       shape:
    //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
    //       textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
    // );
  }
}
