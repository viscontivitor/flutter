import 'package:flutter/material.dart';

void main() => runApp(const BottomNavigationBarExempleApp());

class BottomNavigationBarExempleApp extends StatelessWidget {
  const BottomNavigationBarExempleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExempleApp(),
    );
  }
}

class BottomNavigationBarExemple extends StatefulWidget {
  const BottomNavigationBarExemple({super.key});

  @override
  State<BottomNavigationBarExemple> createState() =>
      _BottomNavigationBarExempleState();
}

class _BottomNavigationBarExempleState
    extends State<BottomNavigationBarExemple> {
  final int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Texto 0: home',
      style: optionStyle,
    ),
    Text(
      'Texto 1: segunda página',
      style: optionStyle,
    ),
    Text(
      'Texto 2: terceira página',
      style: optionStyle,
    ),
  ];
}

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Menu Inferior'),
    ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar:
        BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Negócios',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'Escola',
      ),
    ]),
  );
}
