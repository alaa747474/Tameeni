

import 'package:flutter/material.dart';
import 'package:flutter_application_1/medical_file_details/medical_file.dart';
import 'package:flutter_application_1/widget.dart';
import 'package:google_fonts/google_fonts.dart';


class patient extends StatefulWidget {
  const patient({Key? key}) : super(key: key);

  @override
  _patientState createState() => _patientState();
}

class _patientState extends State<patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),

      body: Stack(
          children: [
         Container(
           margin: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40))),
               height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 Text(
                   "المرضى ",
                   style: GoogleFonts.roboto(
                       textStyle: const TextStyle(
                           fontSize: 26, fontWeight: FontWeight.bold)),
                 ),
                 const SizedBox(height: 5,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                     Text(
                       " الحالة ",
                       style: GoogleFonts.roboto(
                           textStyle: const TextStyle(
                               fontSize: 18,  fontWeight: FontWeight.bold,color: Colors.grey)),
                     ),
                     Container(width: 2,height: 30,color: Colors.teal.shade200,),
                     Text(
                       "التشخيص ",
                       style: GoogleFonts.roboto(
                           textStyle: const TextStyle(
                               fontSize: 18,  fontWeight: FontWeight.bold,color: Colors.grey)),
                     ),
                     Container(width: 2,height: 30,color: Colors.teal.shade200,),
                     Text(
                       "اسم المريض ",
                       style: GoogleFonts.roboto(
                           textStyle: const TextStyle(
                               fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey)),
                     ),
                   ],),
                 ),
                 InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalFile()));
                 },child: pacti("تحويل ", Colors.teal,Colors.teal.shade100,)),
                

                // pacti("تحويل ", Colors.teal,Colors.teal.shade100,),
                 const SizedBox(height: 40,),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 3),
                   child: Container(
                     height: 90,
                     width: double.infinity,
                     decoration: BoxDecoration( color: Colors.white,
                         borderRadius: BorderRadius.circular(15),
                       boxShadow: const [
                         BoxShadow(
                           color: Color.fromRGBO(137, 201, 203,100),
                           blurRadius: 3,
                           spreadRadius: .5,
                           offset: Offset(0,2 ),
                         ),
                       ],
                       
                   ),
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text(
                             "إضافة حالة جديدة ",
                             style: GoogleFonts.roboto(
                                 textStyle: const TextStyle(
                                     fontSize: 22, fontWeight: FontWeight.bold)),
                           ),
                           const Icon(Icons.add,color:  Color.fromRGBO(6, 187, 192, 1),size: 50,),

                         ],
                       ),
                     ),
                 ),




             ),
          ])
           ),
         ),
         ),

          ]),
    );
  }
}
