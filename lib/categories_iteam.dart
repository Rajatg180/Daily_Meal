
import '../category_meal_screen.dart';
import 'package:flutter/material.dart';

class CategoriesIteam extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoriesIteam({
    required this.id,
    required this.title,
    required this.color
  });
  
  void selectCategory(BuildContext ctx){
    //to navigate to other screen method 2
    //Navigator.of(ctx).push(

    //   MaterialPageRoute(builder: (_) {
    //   return CategoryMealScreen(this.title,this.id);

    // }),

    //);

    //method 2 using routes
    Navigator.of(ctx).pushNamed(
      //'/category-meal',
      CategoryMealScreen.routeName,
      arguments: {
        'id':id,
        'title':title

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(title,
          style: TextStyle(
            //fontStyle: FontStyle.italic,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 25)),
        ),
        decoration: BoxDecoration(
          //for giving effect to container
          gradient: LinearGradient(colors: [
          color.withOpacity(0.7),
          color
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15)
         
         ),
      ),
    );
  }
}