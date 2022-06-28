
import 'package:flutter/material.dart';
import 'package:flutter_application_1/log/home.dart';
import 'package:google_fonts/google_fonts.dart';

class introScreen extends StatelessWidget {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
      body: Center (
        child: Padding (
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Image(height: 90,width: 150,
                  image: AssetImage("assets/tameni.png"),
                  fit: BoxFit.contain,
                ),
              ),

              const Text(
                "صحتك تهمنا",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24 ,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50,),
              const Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 50,),
              FlatButton(
                child: Text(
                  'تسجيل الدخول',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(6, 187, 192, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.white,
                textColor: Colors.white,
                minWidth: 260,
                height: 55,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(

                        ),
                      ),
                    );

                },
              ),


            ],
          ),
        ),
      ),
    );
  }

}

