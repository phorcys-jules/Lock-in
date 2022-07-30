// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lock_in/models/Box.dart';

class OneBox extends StatefulWidget {
  final Box box;

  const OneBox({Key? key, required this.box}) : super(key: key);
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
                  Text(widget.box.title),
                  Text(
                    widget.box.address,
                    overflow: TextOverflow.fade,
                  ),
                  Text(widget.box.timeLeft + "restant"),
                ]),
          ),
        ],
      ),
    );
  }
}
