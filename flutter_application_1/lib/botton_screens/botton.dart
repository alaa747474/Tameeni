//
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:doctor/patient.dart';
// import 'package:doctor/snipp.dart';
// import 'package:flutter/material.dart';
//
// import 'calen.dart';
// import 'chat.dart';
// import 'mainHome.dart';
//
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentindex = 2;
//   final List _screens = [
//
//     const snipp(),
//
//     const calen(),
//     const mainHome(),
//     const chat(),
//     const patient(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       extendBody: true,
//       bottomNavigationBar: CurvedNavigationBar(
//         //key: _bottomNavigationKey,
//         index: 2,
//         height: 55.0,
//         items: const <Widget>[
//           Icon(Icons.text_snippet_outlined, size: 25,color: Colors.white,),
//           Icon(Icons.calendar_today, size: 25,color: Colors.white,),
//           Icon(Icons.home_outlined, size: 25,color: Colors.white,),
//           Icon(Icons.chat_outlined, size: 25,color: Colors.white,),
//           Icon(Icons.perm_identity, size: 25,color: Colors.white,),
//         ],
//         color: Color.fromRGBO(6, 187, 192, 10),
//          buttonBackgroundColor:  Color.fromRGBO(6, 187, 192, 10),
//          backgroundColor: Colors.transparent,
//         animationCurve: Curves.easeInOut,
//         animationDuration: const Duration(milliseconds: 600),
//         onTap: (index) {
//           setState(() {
//             _currentindex = index;
//           });
//         },
//         letIndexChange: (index) => true,
//       ),
//
//       body: _screens[_currentindex],
//     );
//   }
// }
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_application_1/botton_screens/patient.dart';
import 'package:flutter_application_1/botton_screens/snipp.dart';
import 'package:flutter_application_1/drawer/patient_menu_screen.dart';

import 'calen.dart';
import 'chat.dart';
import '../color.dart';
import 'mainHome.dart';
import '../drawer/menu.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,required this.x}) : super(key: key);
  final bool x;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [
    const snipp(),

    const calen(),
    const mainHome(),
    const chat(),
    const patient(),
  ];
  int _currentindex = 2;

  final advancedDrawerController = AdvancedDrawerController();
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdvancedDrawer(
        animationCurve: Curves.easeInOut,
        rtlOpening: true,
        animationDuration: const Duration(milliseconds: 300),
        controller: advancedDrawerController,
        backdropColor: MyColors().primaryColor,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        drawer: widget.x==false?const MenuScreen():const PatientMenu(),
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(

                  Icons.menu_open_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                padding: const EdgeInsets.only(top: 15),
                onPressed: (){
                  advancedDrawerController.showDrawer();
                },
              ),



            ],
            leading:   Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Container(
                height: 40,
                width: 60,
                child: const Image(
                  image: AssetImage("assets/tameni.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),


// leadingWidth: 100,

            backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

            elevation: 0,
          ),
          // appBar: AppBar(
          //   centerTitle: true,
          //   title: Padding(
          //     padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         // Image.asset('assets/images/logo.png', width: 50, height: 50),
          //         IconButton(
          //             onPressed: () {
          //               advancedDrawerController.showDrawer();
          //             },
          //             icon: const Icon(
          //               Icons.menu,
          //               size: 30,
          //             ))
          //       ],
          //     ),
          //   ),
          //   backgroundColor: MyColors().primaryColor,
          //   elevation: 0,
          // ),
          bottomNavigationBar:
          CurvedNavigationBar(
            //key: _bottomNavigationKey,
            index: 2,
            height: 60.0,
            items: const <Widget>[
              Icon(Icons.text_snippet_outlined, size: 25,color: Colors.white,),
              Icon(Icons.calendar_today, size: 25,color: Colors.white,),
              Icon(Icons.home_outlined, size: 25,color: Colors.white,),
              Icon(Icons.chat_outlined, size: 25,color: Colors.white,),
              Icon(Icons.perm_identity, size: 25,color: Colors.white,),
            ],
            color: const Color.fromRGBO(6, 187, 192, 10),
            buttonBackgroundColor: const Color.fromRGBO(6, 187, 192, 10),
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            letIndexChange: (index) => true,
          ),
          // CurvedNavigationBar(
          //   index: 2,
          //   key: bottomNavigationKey,
          //   color: Color.fromRGBO(6, 187, 192, 10),
          //   buttonBackgroundColor: Color.fromRGBO(6, 187, 192, 10),
          //   backgroundColor: Colors.transparent,
          //   animationCurve: Curves.easeInOut,
          //   animationDuration: const Duration(milliseconds: 600),
          //   items: const [
          //     Icon(
          //       Icons.text_snippet_outlined,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //     Icon(
          //       Icons.calendar_today,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //     Icon(
          //       Icons.home_outlined,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //     Icon(
          //       Icons.chat_outlined,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //     Icon(
          //       Icons.perm_identity,
          //       size: 25,
          //       color: Colors.white,
          //     ),
          //   ],
          //   onTap: (index) {
          //     setState(() {
          //       selectedIndex = index;
          //     });
          //   },
          //   letIndexChange: (index)=>true,
          // ),
          body: screens[_currentindex],
        ),
      ),
    );
  }
}
