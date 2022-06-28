import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';

class CurrentTreatment extends StatefulWidget {
  const CurrentTreatment({Key? key}) : super(key: key);

  @override
  State<CurrentTreatment> createState() => _CurrentTreatmentState();
}

class _CurrentTreatmentState extends State<CurrentTreatment> {
  final Stream<QuerySnapshot> medication =
      FirebaseFirestore.instance.collection('medication').snapshots();
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz)),
                        ),
                        const BlackText(text: 'العلاج الحالي'),
                        Container(
                          child: Center(
                            child: Column(
                             
                              children: [
                              StreamBuilder<QuerySnapshot>(
                                stream: medication,
                                builder: (BuildContext context,
                                    AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (snapshot.hasError) {
                                    return const BlackText(
                                        text: 'حدث خظأ ما');
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const BlackText(text: 'تحميل ...');
                                  }
                                  final data = snapshot.requireData;
                                  return SingleChildScrollView(
                                    child:ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        primary: false,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            margin: EdgeInsets.only(top: 25),
                                            width: MediaQuery.of(context).size.width,
                                            height: 120,
                                            decoration: BoxDecoration(color: MyColors().white,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
        color: MyColors().primaryColor.withOpacity(0.2),
        spreadRadius:2 ,
        blurRadius: 5,
        offset: Offset(0, 3), 
      ),
                                              ]
                                            ),
                                            child:Center(
                                              child: Column(
                                                children: [
                                                   SmallBlackText(text: '${data.docs[index]['name']}', size: 18,),
                                                    SmallBlackText(text: '${data.docs[index]['description']}', size: 18,),
                                                ],
                                              ),
                                            )
                                            
                                          );
                                        },
                                        itemCount: data.size,
                                      ),
                                  );
                                },
                              ),
                                
                                
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            color: MyColors().white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: MyColors().primaryColor.withOpacity(0.2),
                                spreadRadius: 0.9,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
