import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
              child: Image.asset(
                "assets/images/Logo FANTARO.jpeg",
                width: 250,
              ),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Text(
                "Bienvenue",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                    fontWeight: FontWeight.w300),
              ),
            ),
            // Text(
            //   "A propos de l'App",
            //   style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blue),
            // ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  "Fantaro est une application qui a pour objectif de conscientiser et de sensibiliser les gens à agir de manière responsable \n\n"
                  "Fantaro est un mot malgache qui peut se traduire Informez-vous\n\n"
                  "Il s'agit d'un portail qui ouvre des opportunités à chacun, une porte vers la connaissance, vous y trouverez des astuces bien-etre,"
                  "des activités source de revenu qui offrent de meilleurs alternatives pour la sauvegarde de la planète\n\n"
                  "Grace à Fantaro, nous espérons creer de l'impact pour notre communauté d'abord, pour notre pays et pour le monde entier\n\n"
                  "Créée par des étudiants issues de CNTEMAD, FANTARO est à son Version 1.0 actuellement, toujours en cours de développement en"
                  " attendant le release\n\n"
                  "Pour contacter les développeurs :\n"
                  "- gianierama@gmail.com\n"
                  "- angelicaravelonjohanison@gmail.com\n"
                  "- fredynivoson@gmail.com\n"
                  "- maillard.modeste@gmail.com\n"
                  "- peta.lau13@gmail.com",
                  style: TextStyle(
                      color: Color.fromARGB(208, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ))
          ]),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
