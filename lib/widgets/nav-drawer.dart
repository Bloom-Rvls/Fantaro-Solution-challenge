import 'package:flutter/material.dart';
import 'package:namer_app/widgets/aboutApp.dart';
import 'package:namer_app/widgets/aboutUs.dart';

import '../widgets/archive.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              ' \n        Accueil',
              style: TextStyle(
                color: Color.fromARGB(240, 224, 223, 231),
                fontSize: 30,
                height: 2,
                fontWeight: FontWeight.w200,
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(240, 8, 52, 88),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.abc_outlined,
              color: Color.fromARGB(240, 8, 52, 88),
              size: 24.0,
            ),
            title: Text('Langue'),
            onTap: () => {},
          ),
          ListTile(
              leading: Icon(Icons.bedtime_sharp,
                  color: Color.fromARGB(240, 8, 52, 88), size: 24.0),
              title: Text('Mode nuit'),
              onTap: () => {}),
          // ListTile(
          //     leading: Icon(
          //       Icons.archive_sharp,
          //       color: Color.fromARGB(240, 8, 52, 88),
          //       size: 24.0,
          //       semanticLabel: 'Text to announce in accessibility modes',
          //     ),
          //     title: Text('Archives'),
          //     onTap: () => {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => Archive()),
          //           )
          //         }),
          ListTile(
              leading: Icon(
                Icons.adb_rounded,
                color: Color.fromARGB(240, 8, 52, 88),
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              title: Text('A propos de l\'appli'),
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutApp()),
                    )
                  }),
          ListTile(
              leading: Icon(
                Icons.bookmark,
                color: Color.fromARGB(240, 8, 52, 88),
                size: 24.0,
              ),
              title: Text('A props de nous'),
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    )
                  }),
        ],
      ),
    );
  }
}
