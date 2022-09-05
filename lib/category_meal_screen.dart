import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(Categorytitle,style: TextStyle(),
        ),
        backgroundColor: Colors.pink,
        
      ),
      body: ListView.builder(
        itemBuilder: (cxt, index) {

        },
        itemCount: ,
      )
    );
    }
}