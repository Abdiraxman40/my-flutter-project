import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widget/singlenav.dart';

class PostPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);

                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  //qebkale

                  InkWell(
                    onTap: (){
                    },
                    child: Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  "images/iph1.png",
                  height: MediaQuery.of(context).size.height /1.7,
                ),
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New item phones",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 20,
                              ),
                            ),
                            //qebkale
                            SizedBox(width: 8,),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: 8,),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Waxan kuhayna qalab electronic oo tayadisu "
                        "sareyso macamil waxan kula talinena "
                        "inad naga tukamesatid "
                        "waxan heyna mopiledii nocyadi."
                        "ugu dambeyey calamka "
                        "fadlan nagu soo boqo xarumehena",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 15
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: singlenav(),
    );
  }
}