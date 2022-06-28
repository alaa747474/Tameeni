
import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor/doctor_profile.dart';
import 'package:flutter_application_1/log/home.dart';
import 'package:flutter_application_1/log/signin.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';

import '../color.dart';
import '../doctor/doctor_not.dart';


class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: MyColors().primaryColor,
            body: Padding(
              padding: const EdgeInsets.only(right: 10, top: 40),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 18,bottom: 10),
                  //   child: Icon(Icons.menu_open_rounded,color:MyColors().white,size: 30,),
                  // ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/45.jpg',
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 18, top: 10),
                    child: WhiteText(text: 'مرحبا', size: 22),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 18, bottom: 30),
                    child: WhiteText(text: 'احمد ', size: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => doctor_profile(),
                          ),
                        );
                      },
                      child: const TextWithIcon(
                          text: 'الملف الشخصي', icon: Icons.person)),
                  const SizedBox(
                    height: 7,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const notifacation(),
                          ),
                        );
                      },
                      child: const TextWithIcon(
                          text: 'التنبيهات', icon: Icons.notifications)),
                  const SizedBox(
                    height: 7,
                  ),
                  const TextWithIcon(text: 'المساعدة', icon: Icons.help),
                  const SizedBox(
                    height: 7,
                  ),
                  const TextWithIcon(
                    text: 'الاعدادات',
                    icon: Icons.settings,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  InkWell(onTap:(){
                   
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>home()));
                  },
                    child: const TextWithIcon(
                        text: 'تسجيل الخروج', icon: Icons.logout_outlined),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
