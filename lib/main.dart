

import 'package:daily_meal/category_meal_screen.dart';

import './categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Meal",
      theme: ThemeData(primarySwatch: Colors.pink,accentColor: Colors.amber,fontFamily: 'RobotoCondensed',),
    
      //home: CategoriesScreen(),
      //to open home page using route
      initialRoute: '/',
      //routes is another method to pass date or to navigate to other screen
      routes: {
        //route for home
        '/':(context) => CategoriesScreen(),
        //'/category-meal':(context) => CategoriesScreen(),
        CategoryMealScreen.routeName:(context) => CategoryMealScreen(),
      },
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
