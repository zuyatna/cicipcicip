import 'package:flutter/material.dart';
import 'package:cicipcicip/card/card1.dart';
import 'package:cicipcicip/card/card2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    // TODO: Replace with card3
    Container(color: Colors.blue,)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cicipcicip',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'card'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'card2'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'card3'),
        ],
      ),
    );
  }
}
