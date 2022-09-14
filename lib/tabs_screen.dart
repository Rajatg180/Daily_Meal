import 'package:daily_meal/categories_screen.dart';
import 'package:daily_meal/favorites_screen.dart';
import 'package:daily_meal/main_drawer.dart';
import 'package:flutter/material.dart';
import './Models/meal.dart';

class TabsScreen extends StatefulWidget {
  
  
  //static const routName='/tabs-screen';
  final List<Meal> _favouriteMeals;
  TabsScreen(this._favouriteMeals);
  @override
  State<TabsScreen> createState() => TabsScreenState();
}

class TabsScreenState extends State<TabsScreen> {
  late List<Map<String,dynamic>> _page;
  int _selectedPageIndex=0;
  @override
  void initState(){
    
      _page=[
    {'page':CategoriesScreen(),'title':'Categories',},
    {'page':FavoritesScreen(widget._favouriteMeals),'title':'My Favorite',},
      ];
    super.initState;
  
  }
  void _selectPage(int index){
    setState() {
      _selectedPageIndex=index;
    };
  }
  
  @override
  Widget build(BuildContext context) {
    //TOP TABBAR
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Center(
    //         child: Text("Daily Meal",style: TextStyle(color: Colors.white),)
    //       ),
    //       bottom: TabBar(
    //         labelColor: Colors.white,
    //         tabs: [
    //           Tab(
    //             icon: Icon(Icons.category,color: Colors.white,),
    //             text: "Categorys",

    //           ),
    //           Tab(
    //             icon: Icon(Icons.star,color: Colors.white,),
    //             text: "Favorite",
                
    //           )
    //         ],

    //       ),
    //     ),
    //     body: TabBarView(
    //       children: [
    //         CategoriesScreen(),
    //         FavoritesScreen(),
            
    //       ]),
        
    //   ),
    // );


    //Bottom tab bar
    return Scaffold(
      appBar: AppBar(
           title: 
             Text(_page[_selectedPageIndex]['title'])
          
       ),
      drawer: MainDrawer(),
      body: _page[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories"
          
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorites"
          
          )

      ]
      ),
    );
  }
  }