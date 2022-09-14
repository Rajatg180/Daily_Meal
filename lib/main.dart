

import 'package:daily_meal/category_meal_screen.dart';
import 'package:daily_meal/filters_screen.dart';
import 'package:daily_meal/meal_detail_screen.dart';
import 'package:daily_meal/splachScreen.dart';
import 'package:daily_meal/tabs_screen.dart';
import 'dummy-data.dart';
import './Models/meal.dart';
import './categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> _filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian':false,

  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favouriteMeals=[];
  void _setFilters(Map<String,bool> filterData){
     setState(() {
       _filters=filterData;

       _availableMeals=DUMMY_MEALS.where((meal){
        
          if(_filters['gluten']! && !meal.isGlutenFree){
          return false;
        }
        if(_filters['lactose']! && !meal.isLactoseFree){
          return false;
        }
        if(_filters['vegan']! && !meal.isVegan){
          return false;
        }
        if(_filters['vegatarian']! && !meal.isVegetarian){
          return false;
        }
        
        
        
        return true;

       }).toList();
     });
  }
  void _toggleFavorites(String mealId){
    final existingIndex=_favouriteMeals.indexWhere((meal) => meal.id==mealId);
    if(existingIndex>=0){
      setState(() {
        _favouriteMeals.removeAt(existingIndex);
      });
    }
    else{
      setState(() {
        _favouriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id==mealId)
        );
      });
    }
  }

  bool _isMealFavorite(String id){
    return _favouriteMeals.any((meal) => meal.id==id);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Meal",
      theme: ThemeData(primarySwatch: Colors.orange,accentColor: Colors.amber,fontFamily: 'Raleway',),
    
      //home: CategoriesScreen(),
      //to open home page using route
      home: MyHomePage(_favouriteMeals),
      //initialRoute: '/',
      //routes is another method to pass date or to navigate to other screen
      routes: {
        //route for home
        //'/':(context) => CategoriesScreen(),
        //'/category-meal':(context) => CategoriesScreen(),
        CategoriesScreen.routeName:((context) => CategoriesScreen()),
        CategoryMealScreen.routeName:(context) => CategoryMealScreen(_availableMeals),
        MealDetailScreen.routName:(context) => MealDetailScreen(_toggleFavorites,_isMealFavorite),
        FiltersScreen.routName:(context) => FiltersScreen(_filters,_setFilters),
        //TabsScreen.routName:(context) => TabsScreen(),

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
