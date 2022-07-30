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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      OneBox(box: Box("title", "address", "timeLeft")),
                      Container(
                        height: 200,
                        padding: const EdgeInsets.all(20.0),
                        margin: const EdgeInsets.only(
                            bottom: 20,
                            top: 20), // otherwise the logo will be tiny
                        child: const Image(
                          image: AssetImage('img/colis.png'),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text("My new phone"),
                              Text(
                                "Centre commercial St Sebastien \n 54000 Nancy",
                                overflow: TextOverflow.fade,
                              ),
                              Text("15 jours restant"),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyTabbedPage(),
    );
  }
}
