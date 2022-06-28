
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class mainHome extends StatefulWidget {
  const mainHome({Key? key}) : super(key: key);

  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(6, 187, 192, 10),

        
        body: Container(
          margin: EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        "مرحبا د/ على",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
// textAlign: TextAlign.center,
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      child: Image(
                        image: AssetImage("assets/male doctor.png"),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 6),
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
                  height: 50,
                  width: MediaQuery.of(context).size.width * .86,
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    controller: controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                      disabledBorder: InputBorder.none,
                      hintText: ' بحث',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          wordSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 2),
                      border: const OutlineInputBorder(
//borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Text(
                  "20 يوليو2022    3:30م",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [

                          Container(
                            height: 140,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(6, 187, 192, 1).withOpacity(.15),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text("0\n"

                                  "إستشارة", style: GoogleFonts.roboto(

                                textStyle: TextStyle(

                                  fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 187, 192, 1), ),),textAlign: TextAlign.center,

                              ),
                            ),
                          ),
// Container(height: 120,width: 120,color: Colors.deepPurple,alignment: Alignment.bottomCenter,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration( color: Colors.white,

                              borderRadius: BorderRadius.circular(15),

                              boxShadow: const [

                                BoxShadow(

                                  color: Color.fromRGBO(137, 201, 203,100),
//
                                  blurRadius: 3,

                                  spreadRadius: 1,

                                  offset: Offset(0,3),

                                ),

                              ],



                            ),
// decoration: BoxDecoration(
//      color: Color.fromRGBO(6, 170, 192, 80),
//      borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.only(bottom: 112, left: 120),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                             child: Image(image: AssetImage("assets/875275.png"),),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [

                          Container(
                            height: 140,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(6, 187, 192, 1).withOpacity(.15),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text("1\n"

                                  "فحص", style: GoogleFonts.roboto(

                                textStyle: TextStyle(

                                  fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 187, 192, 1), ),),textAlign: TextAlign.center,

                              ),
                            ),
                          ),
// Container(height: 120,width: 120,color: Colors.deepPurple,alignment: Alignment.bottomCenter,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration( color: Colors.white,

                              borderRadius: BorderRadius.circular(15),

                              boxShadow: const [

                                BoxShadow(

                                  color: Color.fromRGBO(137, 201, 203,100),

                                  blurRadius: 3,

                                  spreadRadius: 1,

                                  offset: Offset(0,3),

                                ),

                              ],



                            ),
// decoration: BoxDecoration(
//     color: Color.fromRGBO(6, 170, 192, 80),
//     borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.only(bottom: 112, left: 120),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Image(image: AssetImage("assets/875275.png"),),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "الكل",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "مواعيد اليوم",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: ListView(
                    children: [
                      pact(
                        "فحص",
                        Colors.teal,
                      ),

                     
                    ],
                  ),
                )
              ],
              )),

      // drawer: SafeArea(
      //   child: Container(
      //     color: Colors.teal,
      //     child: ListTileTheme(
      //       textColor: Colors.white,
      //       iconColor: Colors.white,
      //       child: Column(
      //         mainAxisSize: MainAxisSize.max,
      //         children: [
      //           Container(
      //             width: 128.0,
      //             height: 128.0,
      //             margin: const EdgeInsets.only(
      //               top: 24.0,
      //               bottom: 64.0,
      //             ),
      //             clipBehavior: Clip.antiAlias,
      //             decoration: BoxDecoration(
      //               color: Colors.black26,
      //               shape: BoxShape.circle,
      //             ),
      //             child: Image.asset(
      //               'assets/images/flutter_logo.png',
      //             ),
      //           ),
      //           ListTile(
      //             onTap: () {},
      //             leading: Icon(Icons.home),
      //             title: Text('Home'),
      //           ),
      //           ListTile(
      //             onTap: () {},
      //             leading: Icon(Icons.account_circle_rounded),
      //             title: Text('Profile'),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   leading: Icon(Icons.favorite),
//                   title: Text('Favourites'),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   leading: Icon(Icons.settings),
//                   title: Text('Settings'),
//                 ),
//                 Spacer(),
//                 DefaultTextStyle(
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.white54,
//                   ),
//                   child: Container(
//                     margin: const EdgeInsets.symmetric(
//                       vertical: 16.0,
//                     ),
//                     child: Text('Terms of Service | Privacy Policy'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );








// Stack(
//   alignment: AlignmentDirectional.topStart,
//   children: [
//     Container(
//       height: 60,
//       width: 60,
//       color: Colors.red,
//     ),
//     Container(
//       height: 45,
//       width: 45,
//       color: Colors.black,
//     ),
//     Container(
//       height: 20,
//       width: 20,
//       color: Colors.blue,
//     ), ,
              ),

    );
//     return  Scaffold(
// //         appBar: AppBar(
// //           actions: [
// //             Padding(
// //               padding: const EdgeInsets.only(left: 10),
// //               child: Container(
// //                 height: 40,
// //                 width: 60,
// //                 child: const Image(
// //                   image: AssetImage("assets/tameni.png"),
// //                   fit: BoxFit.contain,
// //                 ),
// //               ),
// //             ),
// //
// //           ],
// //           leading:  IconButton(
// //             icon: const Icon(
// //               Icons.menu_open_rounded,
// //               color: Colors.white,
// //               size: 30,
// //             ),
// //             onPressed: (){},
// //           ),
// //
// //
// // // leadingWidth: 100,
// //
// //           backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
// //
// //           elevation: 0,
// //         ),
//         body: Container(
//             decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(20), topLeft: Radius.circular(25))),
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 30),
//                         child: Text(
//                           "مرحبا د/ على",
//                           style: GoogleFonts.roboto(
//                               textStyle: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
// // textAlign: TextAlign.center,
//                         ),
//                       ),
//                       const CircleAvatar(
//                         backgroundColor: Colors.transparent,
//                         radius: 30,
//                         child: Image(
//                           image: AssetImage("assets/doctor (2).png"),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     margin:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 6),
//                     decoration: BoxDecoration(
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Color.fromRGBO(137, 201, 203, 100),
//                             blurRadius: 3,
//                             spreadRadius: .5,
//                             offset: Offset(0, 2),
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(15)),
//                     height: 50,
//                     width: MediaQuery.of(context).size.width * .86,
//                     child: TextFormField(
//                       textAlign: TextAlign.end,
//                       controller: controller,
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
//                         disabledBorder: InputBorder.none,
//                         hintText: ' بحث',
//                         hintStyle: TextStyle(
//                             color: Colors.grey[400],
//                             wordSpacing: 2,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                             letterSpacing: 2),
//                         border: const OutlineInputBorder(
// //borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "20نوفمبر 2022    3:30م",
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontWeight: FontWeight.w400,
//                       fontSize: 16,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: Row(
//
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Stack(
//                           alignment: AlignmentDirectional.bottomStart,
//                           children: [
//
//                             Container(
//                               height: 140,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   color: Color.fromRGBO(6, 187, 192, 1).withOpacity(.15),
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Center(
//                                 child: Text("15\n"
//
//                                     "إستشارة", style: GoogleFonts.roboto(
//
//                                   textStyle: TextStyle(
//
//                                     fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 187, 192, 1), ),),textAlign: TextAlign.center,
//
//                                 ),
//                               ),
//                             ),
// // Container(height: 120,width: 120,color: Colors.deepPurple,alignment: Alignment.bottomCenter,),
//                             Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration( color: Colors.white,
//
//                                 borderRadius: BorderRadius.circular(15),
//
//                                 boxShadow: const [
//
//                                   BoxShadow(
//
//                                     color: Color.fromRGBO(137, 201, 203,100),
//
//                                     blurRadius: 3,
//
//                                     spreadRadius: 1,
//
//                                     offset: Offset(0,3),
//
//                                   ),
//
//                                 ],
//
//
//
//                               ),
// // decoration: BoxDecoration(
// //     color: Color.fromRGBO(6, 170, 192, 80),
// //     borderRadius: BorderRadius.circular(10)),
//                               margin: EdgeInsets.only(bottom: 112, left: 120),
//                               child: const Padding(
//                                 padding: EdgeInsets.all(3.0),
//                                 child: Image(image: AssetImage("assets/875275.png"),),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Stack(
//                           alignment: AlignmentDirectional.bottomStart,
//                           children: [
//
//                             Container(
//                               height: 140,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   color: Color.fromRGBO(6, 187, 192, 1).withOpacity(.15),
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Center(
//                                 child: Text("10\n"
//
//                                     "فحص", style: GoogleFonts.roboto(
//
//                                   textStyle: TextStyle(
//
//                                     fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(6, 187, 192, 1), ),),textAlign: TextAlign.center,
//
//                                 ),
//                               ),
//                             ),
// // Container(height: 120,width: 120,color: Colors.deepPurple,alignment: Alignment.bottomCenter,),
//                             Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration( color: Colors.white,
//
//                                 borderRadius: BorderRadius.circular(15),
//
//                                 boxShadow: const [
//
//                                   BoxShadow(
//
//                                     color: Color.fromRGBO(137, 201, 203,100),
//
//                                     blurRadius: 3,
//
//                                     spreadRadius: 1,
//
//                                     offset: Offset(0,3),
//
//                                   ),
//
//                                 ],
//
//
//
//                               ),
// // decoration: BoxDecoration(
// //     color: Color.fromRGBO(6, 170, 192, 80),
// //     borderRadius: BorderRadius.circular(10)),
//                               margin: EdgeInsets.only(bottom: 112, left: 120),
//                               child: const Padding(
//                                 padding: EdgeInsets.all(3.0),
//                                 child: Image(image: AssetImage("assets/875275.png"),),
//                               ),
//                             ),
//                           ],
//                         ),
//
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Text(
//                           "الكل",
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           "مواعيد اليوم",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Flexible(
//                     child: ListView(
//                       children: [
//                         pact(
//                           "فحص",
//                           Colors.teal,
//                         ),
//
//                         pact(
//                           "تم",
//                           Colors.red,
//                         ),
//                         pact(
//                             "استشاره",
//                             Colors.blue
//                         ),
//                         pact(
//                           "فحص",
//                           Colors.teal,
//                         ),
//                         pact(
//                           "فحص",
//                           Colors.teal,
//                         ),
//
//                         pact(
//                           "تم",
//                           Colors.teal,
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )),
//
//       drawer: SafeArea(
//         child: Container(
//           color: Colors.teal,
//           child: ListTileTheme(
//             textColor: Colors.white,
//             iconColor: Colors.white,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: 128.0,
//                   height: 128.0,
//                   margin: const EdgeInsets.only(
//                     top: 24.0,
//                     bottom: 64.0,
//                   ),
//                   clipBehavior: Clip.antiAlias,
//                   decoration: BoxDecoration(
//                     color: Colors.black26,
//                     shape: BoxShape.circle,
//                   ),
//                   child: Image.asset(
//                     'assets/images/flutter_logo.png',
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   leading: Icon(Icons.home),
//                   title: Text('Home'),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   leading: Icon(Icons.account_circle_rounded),
//                   title: Text('Profile'),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   leading: Icon(Icons.favorite),
//                   title: Text('Favourites'),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   leading: Icon(Icons.settings),
//                   title: Text('Settings'),
//                 ),
//                 Spacer(),
//                 DefaultTextStyle(
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.white54,
//                   ),
//                   child: Container(
//                     margin: const EdgeInsets.symmetric(
//                       vertical: 16.0,
//                     ),
//                     child: Text('Terms of Service | Privacy Policy'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
  }


}


final controller = TextEditingController();



