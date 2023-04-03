import 'package:flutter/material.dart';

import 'package:namer_app/widgets/aboutUs.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutUs()));
          },
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "assets/images/gifFondu.gif",
                width: 300,
              )
            ]),
          )),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
