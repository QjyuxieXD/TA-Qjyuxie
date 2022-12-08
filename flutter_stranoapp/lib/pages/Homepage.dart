import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stranoapp/widgets/CategoriesWidget.dart';
import 'package:flutter_stranoapp/widgets/HomeAppBar.dart';
import 'package:flutter_stranoapp/widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
   body: ListView(children : [
      HomeAppBar(),
      Container(
        //temporary lol
        //height: 500,
        padding: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: Color(0xFFEDECF2),
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
          ),
        ),
        child: Column(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children : [
                Container(
                margin: EdgeInsets.only(left: 5),
                height: 50,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Here",
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.camera_alt,
                size: 27,
                color: Color(0xFF4C53A5),
                ),
            ],
            ),
          ),
          Container(
            //alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: Text(
              "Kategori",
               style: TextStyle(
                fontSize: 25, 
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
                ),
               ),
          ),
          //kategori
          CategoriesWidget(),

          //item
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              "Best selling", 
              style: TextStyle( 
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5),
              ),
              ),
          ),

          //widget
          ItemsWidget(),
        ],
        ),
      )
    ],
    ),
    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      onTap: (index){},
      height: 70,
      color: Color(0xFF4C53A5),
      items: [
        Icon(
          Icons.home,
         size: 30, 
         color: Colors.white,
        ),
        Icon(
          Icons.home,
         size: 30, 
         color: Colors.white,
        ),
        Icon(
          CupertinoIcons.cart_fill,
         size: 30, 
         color: Colors.white,
        ),
        Icon(
          Icons.list,
         size: 30, 
         color: Colors.white,
        ),
      ],
      ),
    );
  }
}