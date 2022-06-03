import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/home_page.dart' as navegacao;
import 'package:flutter_maonamassa/navegacao/page1.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';
// import 'package:flutter_maonamassa/home/home_page.dart';
// import 'package:flutter_maonamassa/images/images_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hand na Massa',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: navegacao.HomePage(),
      routes: {
        '/' : (_) => navegacao.HomePage(),
        '/page1' : (_) => Page1(),
        '/page2' : (_) => Page2(),
        '/page3' : (_) => Page3(),
        Page4.routeName : (_) => Page4(),
      },
    );
  }
}