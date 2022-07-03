import 'package:flutter/material.dart';

import '../botton_screens/botton.dart';

class doctor_profile extends StatefulWidget {
  @override
  State<doctor_profile> createState() => _doctor_profileState();
}

class _doctor_profileState extends State<doctor_profile> {
  // final double coverHeight =200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // appBar: AppBar(
      backgroundColor: Colors.white,
      // ),

      body: Column(
        children: [
          Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, top: 40),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            x: true,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "رجوع",
                      style: TextStyle(
                        color: Colors.teal[200],
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(137, 201, 203, 10),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(0, 1.5),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/p9.jpg"),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    )),
              ),


          Padding(
            padding: const EdgeInsets.only(left: 90, top: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.edit_location_outlined,
                  color: Colors.teal,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "د. على أحمد",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "جراحه عامة",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
          Flexible(child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "السيرة الذاتية",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Text(
                    "عشرون عام من الخبرة فى الطب\nحاصل على الدكتوراة فى مجال جراحه العظام",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Center(child: Text("+7",style: TextStyle(color: Colors.white,fontSize: 30),)),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/a4.png"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/a3.png"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/a2.png"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/a1.png"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(height: .8,width:300,color: Colors.teal,),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "مغلق الان",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
                Text(
                  "9:30AM - 08:00PM",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  " عيادة الأمل",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15,bottom: 10,top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [

                  Text(
                    "050203030-020100044444",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.phone_enabled,color: Colors.teal,size: 20,)


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [

                  Text(
                    "شارع بنك مصر عيادة 5 شارع البحر",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),

                  Icon(Icons.location_on,color: Colors.teal,size: 20,)


                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
              child: Container(
                child: Center(child: Text("+7",style: TextStyle(color: Colors.white,fontSize: 30),)),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/w1.png"), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
              ),
            ),
          ],))


          // Stack(
          //   children: [
          //     Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: 200,
          //         decoration: BoxDecoration(
          //             image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: AssetImage("assets/doctor.jpg"),
          //         )),
          //         child: Padding(
          //           padding: const EdgeInsets.only(bottom: 100,right: 30),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.only(right: 120,top: 20),
          //                 child: Container(
          //                     height: 80,
          //                     width: 200,
          //                     child: Image(
          //                         image: AssetImage("assets/m01.png"),fit: BoxFit.cover,)),
          //               ),
          //               Text("رجوع",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.teal),)
          //             ],
          //           ),
          //         )),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 150),
          //       child: Container(
          //         decoration: BoxDecoration(
          //             color: Colors.deepPurple,
          //             borderRadius: BorderRadius.circular(60)),
          //         width: MediaQuery.of(context).size.width,
          //         height: MediaQuery.of(context).size.height,
          //       ),
          //     ),
          //   ],
          // ),
        ]
      ),

    );

    // return Stack(
    //   children: <Widget>[
    //     Image.network(
    //       "https://i.pinimg.com/236x/29/7f/56/297f5699e558dd17ac556dbb28535115.jpg",
    //       height: MediaQuery.of(context).size.height,
    //       width: MediaQuery.of(context).size.width,
    //       fit: BoxFit.cover,
    //     ),
    //     Scaffold(
    //         backgroundColor: Colors.transparent,
    //         appBar: AppBar(
    //           backgroundColor: Colors.transparent,
    //           elevation: 0.0,
    //         ),
    //         // bottomNavigationBar: Container(
    //         //   padding: EdgeInsets.only(left: 4.0, right: 4.0),
    //         //   height: 44.0 + MediaQuery.of(context).padding.bottom,
    //         //   child: Row(
    //         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         //     children: <Widget>[
    //         //       IconButton(
    //         //         icon: Icon(Icons.star),
    //         //         onPressed: () {},
    //         //       ),
    //         //       IconButton(
    //         //         icon: Icon(Icons.star),
    //         //         onPressed: () {},
    //         //       ),
    //         //     ],
    //         //   ),
    //         // ),
    //         body: Container(
    //           margin: EdgeInsets.only(top: 120,bottom: 0),
    //           color: Colors.white,
    //           height: MediaQuery.of(context).size.height,
    //         )
    //     ),
    //   ],
    // );
  }
// Widget buildCoverImage()=>Container(
//   color: Colors.grey,
//   child: Image.network("https://i.pinimg.com/236x/29/7f/56/297f5699e558dd17ac556dbb28535115.jpg",
//     width: double.infinity,
//     // height: coverHeight,
//     fit: BoxFit.cover,
//   ),
// );
}
