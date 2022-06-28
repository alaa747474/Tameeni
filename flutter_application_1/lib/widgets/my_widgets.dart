
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:google_fonts/google_fonts.dart';


class TextWithIcon extends StatelessWidget {
  const TextWithIcon({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: MyColors().white,
            size: 30,
          ),
          const SizedBox(
            width: 9,
          ),
          Text(
            text,
            style: GoogleFonts.cairo(
                fontSize: 20,
                color: MyColors().white,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class WhiteText extends StatelessWidget {
  const WhiteText({Key? key, required this.text, required this.size})
      : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: MyColors().white, fontSize: size, fontWeight: FontWeight.w700),
    );
  }
}

class BlackText extends StatelessWidget {
  const BlackText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
    );
  }
}

class GreyText extends StatelessWidget {
  const GreyText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: Colors.grey, fontSize: 19, fontWeight: FontWeight.w700),
    );
  }
}

class GreyRow extends StatelessWidget {
  const GreyRow({Key? key, required this.text, required this.secondText})
      : super(key: key);
  final String text;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          GreyText(text: text),
          const GreyText(text: ' : '),
          GreyText(text: secondText)
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      height: 70,
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: MyColors().white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlackText(text: text),
            Icon(
              Icons.folder,
              size: 30,
              color: MyColors().primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class RatesConrainer extends StatelessWidget {
  const RatesConrainer({Key? key, required this.text, required this.secondText})
      : super(key: key);
  final String text;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      height: 70,
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: MyColors().white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [BlackText(text: text), BlackText(text: secondText)],
        ),
      ),
    );
  }
}

class MedicationContainer extends StatelessWidget {
  const MedicationContainer(
      {Key? key, required this.image, required this.text, required this.text2})
      : super(key: key);
  final String image;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset(
                image,
                width: 60,
                height: 60,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallBlackText(
                  text: text,
                  size: 15,
                ),
                SmallGreyText(
                  text: text2,
                  size: 15,
                )
              ],
            ),
          ],
        ),
      ),
      height: 110,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: MyColors().white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: MyColors().primaryColor,
            spreadRadius: 0.3,
            blurRadius: 5,
            offset: const Offset(-6, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}

class SmallGreyText extends StatelessWidget {
  const SmallGreyText({Key? key, required this.text, required this.size})
      : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: Colors.grey, fontSize: size, fontWeight: FontWeight.w700),
    );
  }
}

class SmallBlackText extends StatelessWidget {
  const SmallBlackText({Key? key, required this.text, required this.size})
      : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          color: Colors.black, fontSize: size, fontWeight: FontWeight.w700),
    );
  }
}

class MedicationTime extends StatelessWidget {
  const MedicationTime(
      {Key? key, required this.icon, required this.text, required this.text2})
      : super(key: key);
  final IconData icon;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          color: MyColors().white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: MyColors().primaryColor.withOpacity(0.2),
              spreadRadius: 0.1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ]),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: MyColors().primaryColor,
                size: 35,
              ),
              SmallBlackText(
                text: text,
                size: 14,
              ),
              const SizedBox(
                height: 10,
              ),
              SmallGreyText(
                text: text2,
                size: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ResrvationContainer extends StatelessWidget {
  const ResrvationContainer({ Key? key, required this.text, required this.text2, required this.text3, required this.text4, required this.color }) : super(key: key);
  final String text;
  final String text2;
  final String text3;
  final String text4;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      height: 65,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 45,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WhiteText(text: text, size: 14),
              WhiteText(text: text2, size: 14)
            ],
          ),
          SizedBox(width: 35,),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WhiteText(text: text3, size: 14),
              WhiteText(text: text4, size: 14)
            ],
          ),
        ],
      ),
    );
  }
}

class Notify extends StatelessWidget {
  const Notify({ Key? key,required this.time, required this.name }) : super(key: key);
  final String time;
  final String name;
  
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              child: Center(
                child: Icon(Icons.notifications,color: MyColors().white),
              ),
              width: 40,height:40,
            
            decoration: BoxDecoration(
              color: MyColors().primaryColor,
              borderRadius: BorderRadius.circular(5)
            ),),
            SizedBox(width: 10,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('اشعار جديد من $name',style: GoogleFonts.cairo(
          color: MyColors().primaryColor, fontSize: 15, fontWeight: FontWeight.w700),),
          SmallGreyText(size: 10,text: 'ارسل $name رسالة جديدة سوف تجدها في المراسلة')
              ],
            ),
          ],
        ),
        SmallGreyText(text: time, size: 15)
      ],
    );
  }
}
 
class Vac extends StatelessWidget {
  const Vac({ Key? key, required this.text }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      height: 70,
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: MyColors().white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Row(
          
          children: [Icon(Icons.done,color: MyColors().primaryColor,),BlackText(text: text),],
        ),
      ),
    );
  }
}

