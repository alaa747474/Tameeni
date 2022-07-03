import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

Container reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 2.5,
        color: Color.fromRGBO(6, 187, 192, 100),
      ),
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(40.0),
        topRight: const Radius.circular(40.0),
        bottomRight: const Radius.circular(40.0),
      ),
    ),
    child: TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      // cursorColor:  Color.fromRGBO(6, 187, 192, 100),
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Color.fromRGBO(6, 187, 192, 100),
        ),
        labelText: text,
        labelStyle: TextStyle(color: Color.fromRGBO(6, 187, 192, 100)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
              bottomRight: const Radius.circular(40.0),
            ),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    ),
  );
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width * .6,
    height: 50,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        // color: Color.fromRGBO(6, 187, 192, 10),
        // border: Border.all(color: Color.fromRGBO(6, 187, 192, 10),),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(60, 107, 102, 200),
            spreadRadius: .21,
            blurRadius: 3,
            offset: Offset(0, .5), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Color.fromRGBO(6, 187, 192, 10);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

Widget pact(String text, col) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(137, 201, 203, 100),
            blurRadius: 3,
            spreadRadius: .5,
            offset: Offset(0, 2),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        height: 90,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                              color: col,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(6, 187, 192, 10),
                          )),
                      width: 80,

                      height: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "3:30م",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "أحمد محمد",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "12/3/2022",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage("assets/45.jpg"), fit: BoxFit.cover)),
                //  child: Image(image:NetworkImage("https://i.pinimg.com/564x/ab/55/94/ab559469b76c104a8d2cb3dba5387485.jpg"),),
              ),
            ],
          ),
        ),
      ),
    );
Widget pacti(String text, col, col2) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(137, 201, 203, 100),
            blurRadius: 3,
            spreadRadius: .5,
            offset: Offset(0, 2),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        height: 80,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_drop_down),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: col,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: col2,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color:  Colors.white)
                  ),
                  width: 70,

                  height: 35,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "فشل كلوى",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "احمد محمد",
                style: TextStyle(
                  color: Color.fromRGBO(34, 49, 46, 30),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage('assets/45.jpg'), fit: BoxFit.cover)),
                //  child: Image(image:NetworkImage("https://i.pinimg.com/564x/ab/55/94/ab559469b76c104a8d2cb3dba5387485.jpg"),),
              ),
            ],
          ),
        ),
      ),
    );

Widget calen1(String text, clo, ico) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(137, 201, 203, 100),
            blurRadius: 3,
            spreadRadius: .5,
            offset: Offset(0, 2),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        height: 90,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 45, right: 15),
                child: Icon(
                  ico,
                  color: clo,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Color.fromRGBO(6, 187, 192, 10),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 2,
                            color: Color.fromRGBO(6, 187, 192, 10),
                          )),
                      width: 80,

                      height: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "3:30م",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 26,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "أحمد محمد",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "12/3/2022",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/236x/23/c4/c0/23c4c0e7bfed9104087d8bd728473e9e.jpg"),
                        fit: BoxFit.cover)),
                //  child: Image(image:NetworkImage("https://i.pinimg.com/564x/ab/55/94/ab559469b76c104a8d2cb3dba5387485.jpg"),),
              ),
            ],
          ),
        ),
      ),
    );

Widget date1() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(137, 201, 203, 100),
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "من10:00إالى3:30",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.home_work_rounded,
                    color: Colors.teal,
                    size: 20,
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              width: 200,
              color: Colors.teal.shade100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "من10:00إالى3:30",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chat_outlined,
                    color: Colors.teal,
                    size: 20,
                  )
                ],
              ),
            ),
            Container(
              height: .5,
              width: 200,
              color: Colors.teal.shade200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "20\n"
                    "إستشارة",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(6, 187, 192, 1),
                    )),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 70,
                    width: .5,
                    color: Colors.teal.shade200,
                  ),
                  Text(
                    "15\n"
                    "فحص",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(6, 187, 192, 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget date2() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(137, 201, 203, 100),
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "من10:00إالى3:30",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.home_work_rounded,
                    color: Colors.teal,
                    size: 20,
                  )
                ],
              ),
            ),
            Container(
              height: .5,
              width: 200,
              color: Colors.teal.shade200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "من10:00إالى3:30",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.chat_outlined,
                    color: Colors.teal,
                    size: 20,
                  )
                ],
              ),
            ),
            Container(
              height: .5,
              width: double.infinity * .45,
              color: Colors.teal.shade200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "20\n"
                    "إستشارة",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(6, 187, 192, 1),
                    )),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 70,
                    width: .5,
                    color: Colors.teal.shade200,
                  ),
                  Text(
                    "15\n"
                    "فحص",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(6, 187, 192, 1),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
Widget chat1(tt, cll) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                "3:30م",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: cll,
                child: Text(
                  tt,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "أحمد محمد ",
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    color: Colors.black),
              ),
              Text(
                "أشعر بألم شديد فى هذا الجزء من ",
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    color: Colors.grey),
              ),
            ],
          ),
          Container(
            width: 70,

            height: 70,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage("assets/45.jpg"), fit: BoxFit.cover)),

            //  child: Image(image:NetworkImage("https://i.pinimg.com/564x/ab/55/94/ab559469b76c104a8d2cb3dba5387485.jpg"),),
          ),
        ],
      ),
    );

Widget sigin1(txt) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 6),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(137, 201, 203, 10),
            blurRadius: 2.5,
            spreadRadius: .1,
            offset: Offset(0, 2),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 55,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(right: 9.0),
          child: TextFormField(
            textAlign: TextAlign.end,
            // controller: controller,
            decoration: InputDecoration(
              // prefixIcon: Icon(Icons.search),
              disabledBorder: InputBorder.none,
              hintText: txt,
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
      ),
    );

Widget noti1() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("3:30م"),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "إشعار جديد من محمد علي",
                style: const TextStyle(
                    color: Colors.cyan,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "أرسل علي رسالة جديدة سوف تجدها\n في المراسلة",
                style: TextStyle(color: Colors.grey[400]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Icon(
            Icons.circle_notifications,
            color: Colors.teal,
            size: 45,
          )
        ],
      ),
    );
Widget noti2() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "3:30م",
            style: TextStyle(color: Colors.grey.shade400),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "إشعار جديد من محمد علي",
                style: TextStyle(
                    color: Colors.cyan.shade100,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "أرسل علي رسالة جديدة سوف تجدها\n في المراسلة",
                style: TextStyle(color: Colors.grey[400]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Icon(
            Icons.circle_notifications,
            color: Colors.teal.shade100,
            size: 45,
          )
        ],
      ),
    );
