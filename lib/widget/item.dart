import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.78,// inuu labada container ee box inu hos iyo kor usikiyo waye
      children: [
        for(int i=1; i<5; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF232227),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8
                  )
                ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "PostPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/oppo.png",
                      width: 140,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Iphone 14 Pro",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                //qeblabaad

                Container(
                  child: Text(
                    "New Item",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white60
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$855",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.pinkAccent
                        ),
                      ),
                      Icon(
                        CupertinoIcons.cart_badge_plus,
                        size: 27,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}