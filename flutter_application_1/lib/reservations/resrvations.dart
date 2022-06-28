import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/patient/examine.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Reservations extends StatefulWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  bool x= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            padding:
                const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 15),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyColors().primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/tameni.png',
                    width: 50,
                    height: 50,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: MyColors().white,
                      )),
                ],
              ),
            )),
        Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: MyColors().white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView(
                  children: [
                    SizedBox(height: 15,),
                    Center(child: SmallBlackText(text: 'حجوزاتي', size: 22)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                   x==true? ResrvationContainer(
                        text: '27 يونيو',
                        text2: '12:47',
                        text3: 'منذ 3 اشهر علاج شهري',
                        text4: 'د/احمد علي',
                        color: MyColors().primaryColor):SizedBox(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, (MaterialPageRoute(builder: (context)=>PageTwo())));
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          height: 65,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[400]),
                          child: Center(
                              child: WhiteText(text: 'حجز موعد جديد', size: 14))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: x==true? Column(
                        children: const [
                          SmallBlackText(
                              text: 'الموعد القادم 5 يوليو يوم الثلاثاء',
                              size: 15),
                          SmallBlackText(text: 'الساعة 04:00 مساءا', size: 15)
                        ],
                      ):Container(
                        margin: EdgeInsets.only(top: 20,bottom: 20),
                        width: MediaQuery.of(context).size.width*0.8,
                        height: 250,
                      
                        decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.fitHeight,image: AssetImage('assets/noo.png'))
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                   x==false?Center(child: SmallBlackText(text: 'لم يتم العثور حجوزات !!!', size: 28)) : InkWell(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      MyColors().primaryColor.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              color: MyColors().white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) {
                                          return AlertDialog(
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            title: const SmallBlackText(
                                                text:
                                                    '!!! هل انت متأكد من الغاء الحجز',
                                                size: 17),
                                            actions: [
                                              MaterialButton(
                                                  color:
                                                      MyColors().primaryColor,
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, false),
                                                  child: const WhiteText(
                                                      text: 'لا', size: 17)),
                                              MaterialButton(
                                                  color:
                                                      MyColors().primaryColor,
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, true),
                                                  child:  InkWell(
                                                    onTap: (){
                                                      Navigator.pop(context, false);
                                                      setState(() {
                                                        x=false;
                                                      });
                                                    },
                                                    child: WhiteText(
                                                        text: 'نعم', size: 17),
                                                  )),
                                            ],
                                          );
                                        }).then((exit) {
                                      if (exit == null) return;

                                      if (exit) {
                                        // user pressed Yes button
                                      } else {
                                        // user pressed No button
                                      }
                                    });
                                  },
                                  child: const SmallBlackText(
                                      text: 'الغاء الحجز', size: 17))),
                        ),
                      ),
                    )
                  ],
                ))),
      ],
    ));
  }
}
