import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Fantaro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,

        // ignore: prefer_const_constructors
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.density_medium_rounded,
            color: Colors.white,
            size: 20,
          ),
          onPressed: null,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),
              buildCard(),
            ],
          ),
        ),
      ),

      /*body: Center(
        child: Card(
          elevation: 20,
          shadowColor: Colors.black,
          color: Colors.white,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 108,
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Fantaro project',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ), 
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: const[
                            Icon(Icons.touch_app),
                            Text('Visit')
                          ],
                        ), 
                        ),
                    ),
                  ),
                ],
              ), 
            ),
          ),
        ),
        
      ),*/
    );
  }

  Card buildCard() {
    var heading = '\$1500 per mounth';
    var subheading = '2 bed, 1 bath';
    var cardImage = const AssetImage('images/compostage.jpg');
    var supportingText = 'beautiful card ...';

    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
            title: Text(heading),
            subtitle: Text(subheading),
            trailing: Icon(Icons.favorite_outline),
          ),
          Container(
            height: 80.0,
            child: Ink.image(
              image: cardImage,
              fit:  BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(supportingText),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {/* */}, 
                child: const Text('Contact')
              ),
              TextButton(
                onPressed: () {/* */}, 
                child: const Text('Learn more')
              ),
            ],
          ),
        ],
      ),
    );
  }
}
