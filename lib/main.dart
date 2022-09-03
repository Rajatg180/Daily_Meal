import 'dart:ui';

import './categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Meal",
      theme: ThemeData(primarySwatch: Colors.pink,accentColor: Colors.amber,
      // textTheme: ThemeData.light().textTheme.copyWith(
      //   bodyText1: TextStyle(
      //     color: Color.fromRGBO(20,51,51,1),
      //   ),
      //   bodyText2: TextStyle(color: Color.fromRGBO(20,51,51,1),),
      //   titleMedium: TextStyle(
      //     fontSize: 24,
      //     fontFamily: "RobotoCondensed",

      //   )
      //   )

      ),
    
      home: CategoriesScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Daily Meal"),
//       ),
//       body: CategoriesScreen(),
//     );
//   }
// }
