import 'package:daily_meal/Models/meal.dart';
import 'package:daily_meal/meal_iteams.dart';
import 'package:flutter/material.dart';
import './dummy-data.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName='/Category-meal';
  final List<Meal> _availableMeals;
  CategoryMealScreen(this._availableMeals);
  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  // final String Categoryid;
  String? Categorytitle;
  late List<Meal> displayedMeals;
  var _loadInitData=false;

  void initState(){
   
    super.initState();
  }
  @override
  void didChangeDependencies() {
    if(!_loadInitData){
      final routArg=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final Categoryid=routArg['id'];
    Categorytitle=routArg['title'].toString();
    //gives the filter out data 
    displayedMeals=widget._availableMeals.where((meal) {
      return meal.categories.contains(Categoryid);
    }).toList();

    }
    _loadInitData=true;
    super.didChangeDependencies();
    
  }
  void _removeMeal(String mealId){
     setState(() {
       displayedMeals.removeWhere((meal) => meal.id==mealId,);
     });
  }
  @override
  Widget build(BuildContext context) {
    
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text(Categorytitle.toString(),style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange,
        
      ),
      body: ListView.builder(
        itemBuilder: (cxt, index) {
          return MealItem(id:  displayedMeals[index].id, title: displayedMeals[index].title, imageUrl: displayedMeals[index].imageUrl, complexity: displayedMeals[index].complexity, affordability: displayedMeals [index].affordability, duration: displayedMeals[index].duration);

        },
        itemCount: displayedMeals.length,
      )
    );
    }
}