import 'package:flutter/material.dart';
import 'package:icecreams/util/donut_tile.dart';

class DonutTab extends StatelessWidget {

  List donutsOnSale=[
    ["Blue-Lagoon","36",Colors.blue,"lib/images/ice-cream-blue-lagoon.png"],
    ["Rainbow","45",Colors.red,"lib/images/rainbow.png"],
    ["Strawberry","84",Colors.pink,"lib/images/strawberry.png"],
    ["Choco","95",Colors.brown,"lib/images/chocbar.png"],
  ];

  @override 
  Widget build(BuildContext context){
    return GridView.builder(
      itemCount:donutsOnSale.length,
      padding:EdgeInsets.all(12),
      gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          childAspectRatio:1/1.5
          ),
      itemBuilder:(context,index){
        return DonutTile(
          donutFlavor:donutsOnSale[index][0],
          donutPrice:donutsOnSale[index][1],
          donutColor:donutsOnSale[index][2],
          imageName:donutsOnSale[index][3],
        );
      }
    );
  }
}