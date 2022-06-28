
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../botton_screens/botton.dart';
import '../botton_screens/mainHome.dart';
import '../drawer/menu.dart';

class notifacation extends StatefulWidget {
  const notifacation({Key? key}) : super(key: key);

  @override
  _notifacationState createState() => _notifacationState();
}

class _notifacationState extends State<notifacation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 20,top: 10),
            child:TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                    x: true,
                  ),
                ),
              );
            }, child: Text("رجوع",style: TextStyle(fontSize: 20,color: Colors.white),)),
          ),
         
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 40,
            width: 60,
            child: const Image(
              image: AssetImage("assets/tameni.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
       
        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "التنبيهات ",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold)),
                  ),
                ),
                 const CircleAvatar(
                  backgroundColor: Colors.white,

                  radius: 32,
                  child: Image(
                    image: const AssetImage("assets/p9.jpg",),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "عرض الكل",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        "اليوم",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                noti1(),
                noti1(),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    height: .8,
                    width: 350,
                    color: Colors.grey.shade300,
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 28),
                  child: Text(
                    "الأمس",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(child: BlackText(text: '!!! لا توجد اشعارات '))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
