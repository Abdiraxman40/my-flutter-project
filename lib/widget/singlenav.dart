import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class singlenav extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Wadarta qimaha",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "\$100",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFFEFB322),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hada Gado",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 10,),
                Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}