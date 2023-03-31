import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Accueil',
              style: TextStyle(
                color: Color.fromARGB(240, 224, 223, 231),
                fontSize: 35,
                height: 2,
                fontWeight: FontWeight.w200,
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(144, 28, 174, 120),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/icon1.jpg'))),
          ),
          ListTile(
            leading: Icon(
              Icons.abc_outlined,
              color: Color.fromARGB(255, 19, 91, 149),
              size: 24.0,
            ),
            title: Text('Langue'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.bedtime_sharp,
                color: Color.fromARGB(255, 19, 91, 149), size: 24.0),
            title: Text('Mode nuit'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.archive_sharp,
              color: Color.fromARGB(255, 19, 91, 149),
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            title: Text('Archives'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.ad_units_rounded,
              color: Color.fromARGB(255, 19, 91, 149),
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            title: Text('A propos de l\'appli'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Color.fromARGB(255, 19, 91, 149),
              size: 24.0,
            ),
            title: Text('A props de nous'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
