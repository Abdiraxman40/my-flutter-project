import 'package:flutter/material.dart';
import 'package:maanka40/widget/item.dart';
import 'package:maanka40/widget/navbar.dart';


class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      //qebkale

                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Electronic Shop",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                //qebkale

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Waqtiga Dalabka",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 22,

                    ),
                  ),
                ),
                SizedBox(height: 30,),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Text("Iphone"),
                    Text("Samsung"),
                    Text("OPP F9"),
                    Text("Wotch"),

                  ],
                ),
                Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        ItemsWidget(),
                        ItemsWidget(),
                        ItemsWidget(),
                        ItemsWidget(),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: navbar(),
      ),
    );
  }
}
