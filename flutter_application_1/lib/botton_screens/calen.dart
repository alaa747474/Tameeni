
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../doctor/date.dart';

class calen extends StatefulWidget {
  const calen({Key? key}) : super(key: key);

  @override
  _calenState createState() => _calenState();
}

class _calenState extends State<calen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),

      body: Stack(
          children: [
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                  InkWell(
                    onTap: (){ Navigator.push(context,
                        MaterialPageRoute(builder: (context) => date()));
                    },
                    child: Container(width: MediaQuery.of(context).size.width*.4,
                      height: 50,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(137, 201, 203,100),
                              blurRadius: 3,
                              spreadRadius: .5,
                              offset: Offset(0,2 ),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),
                          )
                      ),
                      child:
                      Center(
                        child: Text(
                          "مواعيدى",
                          style: GoogleFonts.roboto(
                            color: Color.fromRGBO(6, 187, 192, 10),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),


                    ),
                  ),
                    Container(width: MediaQuery.of(context).size.width*.4,
                      height: 50,
                      decoration: const BoxDecoration(
                          boxShadow:  [
                            BoxShadow(
                              color: Color.fromRGBO(137, 201, 203,100),
                              blurRadius: 3,
                              spreadRadius: .5,
                              offset: Offset(0,2 ),
                            ),
                          ],
                          color:  Color.fromRGBO(6, 187, 192, 10),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10),
                          )
                      ),
                      child: Center(
                        child: Text(
                          " الحجوزات ",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ), textAlign: TextAlign.center,
                        ),
                      ),




                    ),
                ],),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text(
                    "القادمة",
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
    Container(height: 30,width: 1,color: Colors.teal[200],),
                  Text(
                    "السابقة",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],),
              ),
              calen1("فحص",Color.fromRGBO(6, 187, 192, 1),Icons.check_circle),
              
            ],
          ),
        ),
      ),
      ),

          ])
    );
  }
}
