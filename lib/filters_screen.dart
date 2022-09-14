import 'package:daily_meal/main_drawer.dart';
import 'package:flutter/material.dart';
class FiltersScreen extends StatefulWidget {
  static const routName='/filter-screen';
  
  final Function saveFilters;
  final Map<String,bool> currentFilters;
  FiltersScreen(this.currentFilters,this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree=false;
  var _vegatarian=false;
  var _vegan=false;
  var _lactoseFree=false;
  
  // Widget _buildSwitchListTitle(String title,
  // String description,
  // bool currentValue,
  // Function updateValue){
  //   return SwitchListTile(
  //               title:Text(title),
  //               subtitle: Text(description),
  //               value: currentValue, 
  //               onChanged: updateValue(),);

  // }
  @override
  initStatet(){
    var _glutenFree=widget.currentFilters['gluten'];
    var _vegatarian=widget.currentFilters['vegetarian'];
    var _lactoseFree=widget.currentFilters['lactose'];
    var  _vegan=widget.currentFilters['vegan'];


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),actions: [
        IconButton(icon: Icon(Icons.save),
        onPressed:() {
          final _selectedfiltersScreen={
             'gluten':_glutenFree,
             'lactose':_lactoseFree,
             'vegan':_vegan,
             'vegetarian':_vegatarian,

  };
          widget.saveFilters(_selectedfiltersScreen);},),
      ]),
      
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Center(child: Text("Adjust Your Meal Selection",style: TextStyle(fontSize: 20),)),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                title:Text("Gluten Free"),
                subtitle: Text( "Only include gluten free meals",), 
                value: _glutenFree, 
                onChanged:  (newValue){
                    setState(() {
                      _glutenFree=newValue;
                    });
                   }),
                SwitchListTile(
                title:Text("Vegetarian"),
                subtitle: Text( "Only include Vegetarian meals",),
                value: _vegatarian, 
                onChanged:  (newValue){
                    setState(() {
                      _vegatarian=newValue;
                    });
                   }),
                SwitchListTile(
                title:Text("Lactose Free"),
                subtitle: Text( "Only include Lactose Free meals",),
                value: _lactoseFree, 
                onChanged:  (newValue){
                    setState(() {
                      _lactoseFree=newValue;
                    });
                   }),
                SwitchListTile(
                title:Text("Vegan"),
                subtitle: Text( "Only include  Vegan meals",),
                value: _vegan, 
                onChanged:  (newValue){
                    setState(() {
                      _vegan=newValue;
                    });
                   }),
                  

        ]
        ),
          )
          
        ],
      )
    );
  }
}