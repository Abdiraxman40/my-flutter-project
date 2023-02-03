import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maanka40/pages/singlepage.dart';


import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes shaqadisu wa inuu page kale ku geyo markad tabatid
      routes: {
        "/" :(context) => home(),
        "PostPage": (context) => PostPage(),
      },
    );
  }
}
