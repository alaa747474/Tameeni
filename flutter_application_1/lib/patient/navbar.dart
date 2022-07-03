

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/drawer/menu.dart';
import 'package:flutter_application_1/medical_file_details/medical_file.dart';
import 'package:flutter_application_1/notifications_details/notifications.dart';
import 'package:flutter_application_1/patient/subject.dart';
import 'package:flutter_application_1/reservations/resrvations.dart';

import 'QRcode.dart';
import 'alerts.dart';
import 'calender.dart';
import 'chat2.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentindex = 2;
  final List _screens = [
    const MedicalFile(),
    const Notifications(),
    const subject(),
    const chat(),
    const Reservations(),
    
  ];
  final advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return  AdvancedDrawer(
      animationCurve: Curves.easeInOut,
      rtlOpening: true,
        animationDuration: const Duration(milliseconds: 300),
        controller: advancedDrawerController,
        backdropColor: MyColors().primaryColor,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        drawer:  MenuScreen(),
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          //key: _bottomNavigationKey,
          index: 2,
          height: 55.0,
          items: const <Widget>[
            Icon(Icons.qr_code, size: 25,color: Colors.white,),
            Icon(Icons.add_alert_sharp,size: 25,color: Colors.white,),
            Icon(Icons.home_outlined, size: 25,color: Colors.white,),
            Icon(Icons.chat_outlined, size: 25,color: Colors.white,),
            Icon(Icons.calendar_today_rounded, size: 25,color: Colors.white,),
          ],
          color: Color.fromRGBO(6, 187, 192, 10),
           buttonBackgroundColor:  Color.fromRGBO(6, 187, 192, 10),
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
    
        body: _screens[_currentindex],
         appBar: AppBar(
           automaticallyImplyLeading: false,
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/tameni.png', width: 50, height: 50),
                    IconButton(
                        onPressed: () {
                          advancedDrawerController.showDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        ))
                  ],
                ),
              ),
              backgroundColor: MyColors().primaryColor,
              elevation: 0,
            ),
      ),
    );
  }
}