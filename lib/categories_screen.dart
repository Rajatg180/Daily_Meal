import 'package:flutter/material.dart';
import './Models/category.dart';
import './dummy-data.dart';
import './categories_iteam.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: Text("Daily Meal"),centerTitle: true),

      body: Container(
        
        width: double.infinity,
        //padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        child: GridView(
          padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES.map((catData) => CategoriesIteam(title: catData.title, color: catData.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ) 
    
    ),
      )
    );
  }
}