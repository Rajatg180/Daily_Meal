import 'package:daily_meal/categories_screen.dart';
import 'package:daily_meal/favorites_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _page=[
    CategoriesScreen(),
    FavoritesScreen(),

  ];
  int _selectedPageIndex=0;
  void _selectPage(int index){
    setState(() {
      _selectedPageIndex=index;
    });
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
           title: Center(
            child: Text("Daily Meal",style: TextStyle(color: Colors.white),)
          ),
       ),
      body: _page[_selectedPageIndex],
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