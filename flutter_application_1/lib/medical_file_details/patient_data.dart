
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/medical_file_details/chronic_diseases.dart';
import 'package:flutter_application_1/medical_file_details/current_treatment.dart';
import 'package:flutter_application_1/medical_file_details/rays.dart';
import 'package:flutter_application_1/medical_file_details/vacc.dart';
import 'package:flutter_application_1/medical_file_details/vital_rates.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';

class PatientData extends StatefulWidget {
  const PatientData({Key? key}) : super(key: key);

  @override
  _PatientDataState createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
    final Stream<QuerySnapshot> userinfo =
      FirebaseFirestore.instance.collection('userinfo').snapshots();
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
                child: ListView(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 48, vertical: 15),
                      margin:
                          const EdgeInsets.only(top: 15, left: 45, right: 45),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: MyColors().white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: StreamBuilder<QuerySnapshot>(
                        stream:userinfo,
                        builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                                    return const BlackText(
                                        text: 'something went wrong');
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const BlackText(text: 'Loading');
                                  }
                                  final data = snapshot.requireData;
                          return Column(
                            children: [
                              GreyRow(text: 'ملف المريض', secondText: '${data.docs[0]['medicalfile']}'),
                              GreyRow(text: 'الاسم', secondText: '${data.docs[0]['username']}'),
                              GreyRow(text: 'الميلاد', secondText: '${data.docs[0]['dateofbirth']}'),
                              GreyRow(text: 'النوع', secondText: '${data.docs[0]['gender']}'),
                              GreyRow(text: 'المهنة', secondText: '${data.docs[0]['job']}'),
                              GreyRow(text: 'الجنسية', secondText: '${data.docs[0]['nationalitiy']}'),
                              GreyRow(text: 'التأمين', secondText: '${data.docs[0]['insurance']}'),
                            ],
                          );
                        }
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const CurrentTreatment()));
                    },child: const MyCard(text: 'العلاج الحالي')),
                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChronicDiseases()));},child: const MyCard(text: 'الأمراض المزمنة')),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const Rays()));}
                      ,child: const MyCard(text: 'الأشعة و التحاليل')),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              (MaterialPageRoute(
                                  builder: (context) =>const VitalRates())));
                        },
                        child: const MyCard(text: 'المعدلات الحيوية')),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const Vacc()));
                      }
                      ,child: const MyCard(text: 'التطعيمات')),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 640),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/45.jpg',
                ),
                radius: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
