import 'package:buybus/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'My Flutter App',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       backgroundColor: Colors.white,
       primaryColor: Color(0xFF006666),
     ),
     home: Home(),
   );
 }
}