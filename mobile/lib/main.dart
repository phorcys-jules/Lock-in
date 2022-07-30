import 'package:flutter/material.dart';
import 'package:lock_in/models/Box.dart';
import 'components/TabBar.dart';
import 'components/OneBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lock\'in',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Bienvenue Jules'),
        '/map': (context) => const MyHomePage(title: 'Bienvenue Jules'),
        '/account': (context) => const MyHomePage(title: 'Bienvenue Jules'),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade700,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.amber.shade700,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                      //OneBox(box: Box("title", "address", "timeLeft")),
                      OneBox(),
                      OneBox(),
                      OneBox(),
                    ],
                  ),
                ),
            ),
          ),
      bottomNavigationBar: const MyTabbedPage(),
    );
  }
}
