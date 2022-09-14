import 'package:flutter/material.dart';
import 'Models/meal.dart';
import 'meal_iteams.dart';
class FavoritesScreen extends StatelessWidget {
  List<Meal> _favouriteMeals;
  FavoritesScreen(this._favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if(_favouriteMeals.isEmpty){
    return Center(
      child: Container(
        
          child: Text("No Favorites Added Yet "))
        
        
    );
    }
    else{
      return ListView.builder(
        itemBuilder: (cxt, index) {
          return MealItem(id:  _favouriteMeals[index].id, title: _favouriteMeals[index].title, imageUrl: _favouriteMeals[index].imageUrl, complexity: _favouriteMeals[index].complexity, affordability: _favouriteMeals[index].affordability, duration: _favouriteMeals[index].duration,);

        },
        itemCount: _favouriteMeals.length,
      );
    }
  }
}