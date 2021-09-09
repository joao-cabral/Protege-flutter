import 'package:flutter/material.dart';

const logo = 'assets/logo.png';

appBarComponent(String title) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        // width: 100,
        // height: 100,
        child: Image.asset(logo),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        padding: EdgeInsets.only(right: 16),
      )
    ],
    automaticallyImplyLeading: false,
    backgroundColor: Color(0xFF545e29),
    // bottom: PreferredSize(
    //   child: Container(
    //     color: Color(0xffdc2126),
    //     height: 2.5,
    //   ),
    //   preferredSize: Size.fromHeight(2.5),
    // ),
  );
}
