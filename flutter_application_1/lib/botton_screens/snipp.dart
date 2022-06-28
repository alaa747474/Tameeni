import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor/perciptionscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../doctor/medical_prescription.dart';

class snipp extends StatefulWidget {
  const snipp({Key? key}) : super(key: key);

  @override
  _snippState createState() => _snippState();
}

class _snippState extends State<snipp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PerciptionScreen()));
                        },
                        child: Image(
                          image: AssetImage("assets/n1.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "إنشاء روشتة جديدة",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                      Icon(
                        Icons.add,
                        color: Color.fromRGBO(6, 187, 192, 1),
                        size: 35,
                      ),
                    ],
                  ),
                  Text(
                    "يمكنك حفظ شكل جاهز للاستخدام \n"
                    "بسهولةٍ",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MedicalPrescription()));
                  },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.text_snippet_outlined,
                                color: Colors.grey,
                                size: 25,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                " روشتة علاج",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(137, 201, 203, 100),
                                  blurRadius: 3,
                                  spreadRadius: .5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: MediaQuery.of(context).size.width * .85),
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ]));
  }
}
