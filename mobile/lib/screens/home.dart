import 'package:buybus/components/card.dart';
import 'package:buybus/components/placeholder.dart';
import 'package:buybus/screens/payment.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
   CustomCard(),
   Payment(),
   PlaceholderWidget(Colors.green)
 ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Recarregar'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil')
          )
        ],
      ),
    );
  }
}