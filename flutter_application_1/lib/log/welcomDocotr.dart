
import 'package:flutter/material.dart';
import 'package:flutter_application_1/log/signUp.dart';
import 'package:flutter_application_1/log/signin.dart';
import 'package:google_fonts/google_fonts.dart';


class WelcomeDoctor extends StatefulWidget {
  final int type;

  const WelcomeDoctor({required this.type});

  @override
  _WelcomeDoctorState createState() => _WelcomeDoctorState();
}

class _WelcomeDoctorState extends State<WelcomeDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
        leading:
            Icon(Icons.wallet_giftcard, color: Color.fromRGBO(6, 187, 192, 1)),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/blue.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Text(
                        ' مرحبا بك',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(34, 49, 46, 30),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Image.asset(
                  widget.type == 1
                      ? "assets/patient.png"
                      : "assets/doctor (2).png",
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    child: Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: const Color.fromRGBO(6, 187, 192, 1),
                    textColor: Colors.white,
                    minWidth: 260,
                    height: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signin(
                            type: widget.type,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color.fromRGBO(6, 187, 192, 1),
                        )),
                    child: FlatButton(
                      child: Text(
                        'إنشاء حساب جديد',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(6, 187, 192, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      //color:  const Color.fromRGBO(6, 187, 192, 1),
                      textColor: Color.fromRGBO(6, 187, 192, 1),

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => signUP(type: widget.type,
                              // type: widget.type,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
