import 'package:flutter/material.dart';
import 'screens/articles_screen.dart';

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
  int selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    ArticlesScreen(),
  ];

  void onItemPushed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
      body: pages[selectedIndex],
    );
  }

  
}
