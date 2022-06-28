import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryCard extends StatelessWidget {
  var _title;
  var _imageUrl;
  var _bgColor;

  CategoryCard(this._title, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [

        Container(
          height: 140,
          width: 150,

          decoration: BoxDecoration(
              border: Border.all(color:Color.fromRGBO(6, 187, 192, 400),width: 1.5),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Text(
                _title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // child: Center(
          //   child: Text("10\n"
          //
          //       "فحص", style: GoogleFonts.roboto(
          //
          //     textStyle: TextStyle(
          //
          //       fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 187, 192, 1), ),),textAlign: TextAlign.center,
          //
          //   ),
          // ),
        ),
// Container(height: 120,width: 120,color: Colors.deepPurple,alignment: Alignment.bottomCenter,),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration( color: Color.fromRGBO(6, 187, 192, 60),

            borderRadius: BorderRadius.circular(20),

            boxShadow: const [

              BoxShadow(

                color: Color.fromRGBO(208,208,208,100),

                blurRadius: 3,

                spreadRadius: 1,

                offset: Offset(0,3),

              ),

            ],



          ),
// decoration: BoxDecoration(
//     color: Color.fromRGBO(6, 170, 192, 80),
//     borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(bottom: 98, left: 100),
          child:  Padding(
            padding: EdgeInsets.all(3.0),
              child: Image.asset(
                _imageUrl,
          ),
        ),
        )],
    );
    //   Container(
    //   width: 150,
    //   height: 160,
    //   child:
    //   Stack(
    //     children: <Widget>[
    //       Card(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(20),
    //         ),
    //         child: Container(
    //           width: 150,
    //           height: 137,
    //           padding: const EdgeInsets.symmetric(
    //             horizontal: 16,
    //             vertical: 16,
    //           ),
    //           child: Align(
    //             alignment: Alignment.bottomCenter,
    //             child: Text(
    //               _title,
    //               style: const TextStyle(
    //                 color: Colors.black,
    //                  fontWeight: FontWeight.bold,
    //                  fontSize: 20,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         right: 0,
    //
    //         child: Container(
    //           height: 70,
    //           width: 75,
    //           decoration: BoxDecoration(
    //             color:const Color.fromRGBO(6, 187, 192, 10),
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //            child: Image.asset(
    //             _imageUrl,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}