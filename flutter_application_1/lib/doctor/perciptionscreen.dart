import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/doctor/medical_prescription.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';

class PerciptionScreen extends StatefulWidget {
  const PerciptionScreen({Key? key}) : super(key: key);

  @override
  State<PerciptionScreen> createState() => _PerciptionScreenState();
}

class _PerciptionScreenState extends State<PerciptionScreen> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  CollectionReference ref = FirebaseFirestore.instance.collection('perciption');
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
                    'assets/m01.png',
                    width: 50,
                    height: 50,
                  ),
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 15, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: MyColors().primaryColor),
                                color: MyColors().white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: title,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'اسم الدواء',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: MyColors().primaryColor),
                                color: MyColors().white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: content,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'وصف الدواء',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        onPressed: () {
                          ref.add({
                            'title': title.text,
                            'content': content.text,
                          }).whenComplete(() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const MedicalPrescription()));
                          });
                        },
                        child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                color: MyColors().primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: WhiteText(
                                    text: 'اضف الي الروشتة', size: 17))),
                      ),
                    ],
                  ),
                ))),
      ],
    ));
  }
}
