

import 'package:daily_meal/category_meal_screen.dart';
import 'package:daily_meal/meal_detail_screen.dart';
import 'package:daily_meal/splachScreen.dart';

import './categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Meal",
      theme: ThemeData(primarySwatch: Colors.orange,accentColor: Colors.amber,fontFamily: 'Raleway',),
    
      //home: CategoriesScreen(),
      //to open home page using route
      home: MyHomePage(),
      //initialRoute: '/',
      //routes is another method to pass date or to navigate to other screen
      routes: {
        //route for home
        //'/':(context) => CategoriesScreen(),
        //'/category-meal':(context) => CategoriesScreen(),
        CategoriesScreen.routeName:((context) => CategoriesScreen()),
        CategoryMealScreen.routeName:(context) => CategoryMealScreen(),
        MealDetailScreen.routName:(context) => MealDetailScreen()

      },
      //it will move to CategoriesSreen() is the rout name is not declare
      // onGenerateRoute: (settings) {
      //    return MaterialPageRoute(builder: (context){
      //     CategoriesScreen();

      //    },);
      // },

      
      //when there is no screen to load it will load CategoriesCsreen()
      // onUnknownRoute: (settings)  {
      //   return MaterialPageRoute(builder: (context) {
      //     CategoriesScreen();
      //   },
      //   );
      // },
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
