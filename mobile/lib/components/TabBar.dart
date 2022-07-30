// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key? key}) : super(key: key);
  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> {
  int _selectedIndex = 0; //New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/map');
        break;
      case 2:
        Navigator.pushNamed(context, '/account');
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.work_rounded),
          label: 'Mes Commandes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.door_front_door_rounded),
          label: 'Lockers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Mon Compte',
        ),
      ],
      currentIndex: _selectedIndex, //New
      onTap: _onItemTapped, //New
    );
  }
}
