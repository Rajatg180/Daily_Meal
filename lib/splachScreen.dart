import 'package:daily_meal/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 5),(() {
      // Navigator.of(context).pushReplacement(CategoriesScreen.routeName),
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return CategoriesScreen();
        }
        )
      );
    }));
  }
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      //color: Colors.grey,
      height: MediaQuery.of(context).size.height,
       child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Lottie.asset('assets/SplachScreen/meal.json'),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text("Daily Meal",style: TextStyle(color: Colors.orange,fontSize: 30,fontStyle: FontStyle.italic),),
          )

        ]),
       ),
     ),
    );
  }
}