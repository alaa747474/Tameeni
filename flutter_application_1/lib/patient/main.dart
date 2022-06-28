

import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'navbar.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var widget;
    return OverlaySupport(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:BottomNavBar(),
    
    
      ),
    );
  }
}