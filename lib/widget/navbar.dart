import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navbar extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
          color: Color(0xFF232227),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 8
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.delivery_dining,
            size: 35,
            color: Colors.white,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFFEFB322),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 6,
                )
              ],
            ),
            child: Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.history,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            size: 35,
            color: Colors.white,
          ),

        ],
      ),
    );
  }
}