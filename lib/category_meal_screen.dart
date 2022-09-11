import 'package:daily_meal/meal_iteams.dart';
import 'package:flutter/material.dart';
import './dummy-data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName='/Category-meal';
  // final String Categoryid;
  // final String Categorytitle;
  // CategoryMealScreen(this.Categorytitle,this.Categoryid);

  @override
  Widget build(BuildContext context) {
    //taking data using route
    final routArg=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final Categoryid=routArg['id'];
    final Categorytitle=routArg['title'].toString();
    //gives the filter out data 
    final categoryMeals=DUMMY_MEALS.where((meal) {
      return meal.categories.contains(Categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(Categorytitle,style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        
      ),
      body: ListView.builder(
        itemBuilder: (cxt, index) {
          return MealItem(id: categoryMeals[index].id, title: categoryMeals[index].title, imageUrl: categoryMeals[index].imageUrl, complexity: categoryMeals[index].complexity, affordability: categoryMeals[index].affordability, duration: categoryMeals[index].duration);

        },
        itemCount: categoryMeals.length,
      )
    );
    }
}