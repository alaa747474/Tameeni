
import 'package:flutter/material.dart';
import 'package:flutter_application_1/botton_screens/botton.dart';
import 'package:flutter_application_1/log/welcomDocotr.dart';
import 'package:google_fonts/google_fonts.dart';


class home extends StatefulWidget {
  // final int type;
  // const home({required this.type});
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  bool click = false;
  late bool x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ))
        // ],
        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'أنت أى شخص ؟ ',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(34, 49, 46, 30),
                          fontSize: 22,
                          wordSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .25,
                    width: MediaQuery.of(context).size.width * .66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:  DecorationImage(
                          image: AssetImage(

                              "assets/patient.png",)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ), //patient image
                TextButton(
                    onPressed: () {
                      setState(() {
                        x=true;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeDoctor(
                            type: 1, //doctor
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'تسجيل الدخول كمريض ؟ ',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      textAlign: TextAlign.center,
                    )), //patient text
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .25,
                    width: MediaQuery.of(context).size.width * .66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/doctor (2).png"),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 150, left: 170),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        icon: Icon(
                          (click == false) ? null : Icons.check_circle,
                          color: Colors.teal,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ), //doctor image
                TextButton(
                  onPressed: () {
                    setState(() {
                      x=false;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeDoctor(
                          type: 2, //doctor
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "تسجيل الدخول كطبيب ؟",
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ), //doctor text
                TextButton(onPressed: (){
                  Navigator.push(context, (MaterialPageRoute(builder: (context)=>HomeScreen(x: x))));
                }, child: Text(''))
              ],
            ),
          ),
        ],
      ),
//           body: Stack(

//   children: <Widget>[
//    Positioned(
//        top: 0,
//        bottom: 0,

//        child:
//    Container(
//        decoration: BoxDecoration( color: Colors.indigo,

//          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),

//        height: MediaQuery.of(context).size.height,
//        width: MediaQuery.of(context).size.width,
//        ))

//   ],
//  ),
    );
  }
}
