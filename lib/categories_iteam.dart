import '../category_meal_screen.dart';
import 'package:flutter/material.dart';

class CategoriesIteam extends StatelessWidget {
  final String title;
  final Color color;
  CategoriesIteam({
    required this.title,
    required this.color
  });
  
  void selectCategory(BuildContext ctx){
    //to navigate to other screen 
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMealScreen();

    }),);
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
        child: Text(title,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 20)),
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