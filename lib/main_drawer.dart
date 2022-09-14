import 'package:daily_meal/categories_screen.dart';
import 'package:daily_meal/favorites_screen.dart';
import 'package:daily_meal/filters_screen.dart';
import 'package:daily_meal/tabs_screen.dart';
import 'package:flutter/material.dart';
class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  // Widget BuildListTitle(String title,IconData icon,Function tapHandler){
  //   return ListTile(
  //           leading: Icon(icon,size: 25,),
  //           title: Text(
  //             title,
  //             style: TextStyle(
  //               fontSize: 20,
  //             ),
  //           ),
  //           onTap: () {
  //            tapHandler;
  //           },
  //         );
  // }

  @override

  
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        children: [
          Container(
            color: Colors.orange,
            height: MediaQuery.of(context).size.height*0.2,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up !',
              style: TextStyle(
                color: Colors.black,
                //fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(Icons.restaurant,size: 25,),
            title: Text('Meal',style: TextStyle(fontSize: 20),),
            onTap: (){
                 Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Filter',style: TextStyle(fontSize: 20),),
            onTap: (){
                print("okkk");
                 Navigator.of(context).pushNamed(FiltersScreen.routName);
            },
          ),
        ]
      ),
    );
  }
}