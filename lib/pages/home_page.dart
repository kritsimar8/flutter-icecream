// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:icecreams/tab/burger_tab.dart';
import 'package:icecreams/tab/donut_tab.dart';
import 'package:icecreams/tab/pancake_tab.dart';
import 'package:icecreams/tab/pizza_tab.dart';
import 'package:icecreams/tab/smoothie_tab.dart';
import 'package:icecreams/util/my_tab.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{

  List<Widget> myTabs= const [
    MyTab(
      iconPath:'lib/images/ice-cream.png',
    ),
    MyTab(
      iconPath:'lib/images/burger.png',
    ),
    MyTab(
      iconPath:'lib/images/smoothie.png',
    ),
    MyTab(
      iconPath:'lib/images/pizza.png',
    ),
  ];



  @override
    Widget build(BuildContext context){
      return DefaultTabController(
        length:myTabs.length,
        child:Scaffold(
        appBar:AppBar(
          backgroundColor:Colors.transparent,
          elevation:0,
          leading:Padding(
            padding:const EdgeInsets.only(left:24.0),
            child:IconButton(
              icon:Icon(
              Icons.menu,
              color:Colors.grey[800],
              size:36,
              ),
              onPressed:(){
                
              }
            ),
          ),
          actions:[
            Padding(
            padding:const EdgeInsets.only(right:24.0),
            child:IconButton(
              icon:Icon(
                 Icons.person,
              color:Colors.grey[800],
              size:36,
              ),
              onPressed:(){

              }
             
            ),
            ),
          ]
        ),
         body:Column(
          children:[
            Padding(
                padding:const EdgeInsets.symmetric(horizontal:36.0,vertical:18),
                child:Row(
                  children:const[
                    Text(
                      'I wanna  ',
                      style:TextStyle(fontSize:24),
                    ),
                    Text(
                      'Have',
                      style:TextStyle(fontSize:32,fontWeight:FontWeight.bold),
                    ),
                  ],
                ),
            ),
            const SizedBox(height:24),

            TabBar(tabs:myTabs),

            Expanded(
              child: TabBarView(
              children:[
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab(),
              ]
            )
            )
            
            
          ]
         )
      )
      );
      
    }
  }
