import 'package:daily_meal/dummy-data.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  
  static const routName='/meal-detail';
  final Function toggleFavorites;
  final Function isMealFavourite;
  MealDetailScreen(this.toggleFavorites,this.isMealFavourite);

  @override
  Widget build(BuildContext context) {
    final mealId=ModalRoute.of(context)!.settings.arguments as String;
    //filter out data it will return first occurance 
    final selectedMeal=DUMMY_MEALS.firstWhere((meal)=>meal.id==mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title,style: TextStyle(color: Colors.black),),
      ),
      
        //margin: EdgeInsets.all(10),
        //color: Colors.amber,

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                
                height: MediaQuery.of(context).size.height-600,
                width: double.infinity,
                child: Image.network(selectedMeal.imageUrl,fit: BoxFit.cover,),
              ),
              Container(
                
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Ingredients",style: TextStyle(color: Colors.orange, fontSize: 20),),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 180,
                //width: 300,
                //color: Colors.black,
                // height: MediaQuery.of(context).size.height-600,
                // margin: EdgeInsets.symmetric(vertical: 10,horizontal: MediaQuery.of(context).size.width-20),
                // color: Colors.black,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Card(
                    
                    elevation: 10,
                    
                    
                    child: Center(child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 18
                      
                      ,horizontal: 20),
                      child: Text(selectedMeal.ingredients[index],style: TextStyle(fontSize: 15),))),
                  );
                },
                itemCount: selectedMeal.ingredients.length,),
              ),
              Container(
                
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Steps",style: TextStyle(color: Colors.orange, fontSize: 20),),
              ),
              Container(
                margin: EdgeInsets.all(3),
                

                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 180,
                child: ListView.builder(itemBuilder: 
                (context, index) {
                  return Card(
                    elevation: 10,
                    child: ListTile(leading: CircleAvatar(child: Text('#${index +1}')
                    ),
                    title: Text(selectedMeal.steps[index]),
                    ),
                  );
                },
                itemCount: selectedMeal.steps.length,
                )
                
                )

              

            ], 
          ),
        
        ),
        
      floatingActionButton: FloatingActionButton(
        child: Icon(isMealFavourite(mealId)? Icons.star : Icons.star_border),
        onPressed: (() =>  toggleFavorites(mealId)),
      
    ));
  }
}