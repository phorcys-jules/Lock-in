// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lock_in/models/Box.dart';

class OneBox extends StatefulWidget {
  //final Box box;

  const OneBox({
    Key? key,
  }) : super(key: key);
  @override
  State<OneBox> createState() => _OneBoxState();
}

class _OneBoxState extends State<OneBox> {
  void _onItemTapped(int index) {
    //TODO
    //show map with location ?
    //pop up with more info ? which ?
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: 200,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),
      child: Column(children: <Widget>[
        //OneBox(box: Box("title", "address", "timeLeft")),
        Container(
          height: 200,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(
              bottom: 20, top: 20), // otherwise the logo will be tiny
          child: const Image(
            image: AssetImage('img/colis.png'),
          ),
        ),
        Container(
          width: mediaQuery.size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  <Widget>[
              const Text("My new phone", style: TextStyle(fontWeight: FontWeight.w900)),
              const Text(
                "Centre commercial St Sebastien 54000 Nancy",
                overflow: TextOverflow.visible,
              ),
              Text("15 jours restant", style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
        ),
        //Container( width: 70.0, ), Flexible( child: Text("Hiefgrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"), ),
      ]),
    );
  }
}

/*
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(
                bottom: 20, top: 20), // otherwise the logo will be tiny
            child: const Image(
              image: AssetImage('img/colis.png'),
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //Text(widget.box.title),
                  //Text(
                  //  widget.box.address,
                  //  overflow: TextOverflow.fade,
                  //),
                  //Text(widget.box.timeLeft + "restant"),
                ]),
          ),
        ],
      ),
    );
  }
}

*/