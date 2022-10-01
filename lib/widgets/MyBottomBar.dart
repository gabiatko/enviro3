
import 'package:flutter/material.dart';


class MybottomBar extends StatefulWidget {
  const MybottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MybottomBar> createState() => _MybottomBarState();
}

class _MybottomBarState extends State<MybottomBar> {


  int _selectedIndex = 0;

  static const TextStyle optionStyle =
    TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        // color: Colors.black,
    );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Novinky',
      style: optionStyle,
    ),
    Text(
      'Index 1: Výzvy',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(index) {
        case 0: {
          Navigator.pushNamed(context, '/novinky');
        }
        break;
        case 1: {
          Navigator.pushNamed(context, '/vyzvy');
        }
        break;
      }

      print(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      backgroundColor: const Color(0xff00ffa0),
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.published_with_changes),
          label: 'Novinky',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Výzvy',
        ),
      ],
    );
  }
}