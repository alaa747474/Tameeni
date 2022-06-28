
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';


import '../../widgets/my_widgets.dart';

class MedicationTimes extends StatefulWidget {
  const MedicationTimes({Key? key}) : super(key: key);

  @override
  State<MedicationTimes> createState() => _MedicationTimesState();
}

class _MedicationTimesState extends State<MedicationTimes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
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
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const WhiteText(text: 'رجوع', size: 20))
                    ],
                  ),
                )),
            Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.87,
                    decoration: BoxDecoration(
                      color: MyColors().white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            BlackText(text: 'مواعيد الدواء'),
                            SizedBox(height: 40,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                  color:
                                      MyColors().primaryColor.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Image.asset(
                                      'assets/panadol.jpg',
                                      width: 60,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SmallBlackText(
                                          text: 'بانادول اكسترا',
                                          size: 15,
                                        ),
                                        SmallGreyText(
                                          text: 'اليوم الساعة 10:00',
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ])
                                ],
                              ),
                            ),SizedBox(height: 20,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset:const Offset(
                                        0, 4), 
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                   children: [
                                    Image.asset(
                                      'assets/panadol.jpg',
                                      width: 60,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SmallBlackText(
                                          text: 'بانادول اكسترا',
                                          size: 15,
                                        ),
                                        SizedBox(height: 5,),
                                        SmallGreyText(
                                          text: 'اليوم الساعة 10:00',
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 110,),
                                    Icon(Icons.check_box_rounded,size: 30,color: MyColors().primaryColor,)
                                  ]),
                                  SizedBox(height: 25,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(200, 35),
                                      maximumSize: const Size(200, 35),
                                      elevation: 0,
                                      primary: MyColors().primaryColor.withOpacity(0.2),
                                    ),
                                    child: Row(
                                      
                                      children: [
                                        Icon(Icons.alarm,color: MyColors().primaryColor,),
                                         Text('غفوة الساعة 10:00',
                                            style: TextStyle(fontSize: 17,color: MyColors().primaryColor)),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),

SizedBox(height: 25,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset:const Offset(
                                        0, 4), 
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                   children: [
                                    Image.asset(
                                      'assets/panadol.jpg',
                                      width: 60,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SmallBlackText(
                                          text: 'بانادول اكسترا',
                                          size: 15,
                                        ),
                                        SizedBox(height: 5,),
                                        SmallGreyText(
                                          text: 'اليوم الساعة 10:00',
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 110,),
                                    Icon(Icons.check_box_rounded,size: 30,color: MyColors().primaryColor,)
                                  ]),
                                  
                                 
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
