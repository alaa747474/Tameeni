import 'package:flutter/material.dart';
import 'doctor_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category_card.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}
class _PageTwoState extends State<PageTwo> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () { Navigator.pop(context);},
              icon: const Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.white,
                size: 40,
              ))
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
        // leadingWidth: 100,

        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     
                    children:  [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(6, 187, 192, 400),
                                blurRadius: 2,
                                spreadRadius: .6,
                                offset: Offset(0, 1),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22)
                        ),
                        child: const Image(
                            image: const AssetImage("assets/12.png",),
                          width: 55,
                          height: 55,

                        ),
                      ),
                    ]
                  ),
                  const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "عرض الكل",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "اختر تخصص",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                buildCategoryList(),
                const SizedBox(
                  width: 15,
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "عرض الكل",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "اختر طبيبك",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  
                
                 buildDoctorList(),
                ]
                
                
                ),
            )
          )
          )
      );

  }
  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          
           CategoryCard(
            'الأسنان',
            'assets/dental.png',
            const Color.fromRGBO(6, 187, 192, 10),
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'جراحة القلب',
            'assets/heart.png',
            const Color.fromRGBO(6, 187, 192, 10),
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
            'عيون',
            'assets/eye.png',
            const Color.fromRGBO(6, 187, 192, 10),
          ),
          const SizedBox(
            width: 30,
          ),
          CategoryCard(
            'مخ وأعصاب',
            'assets/brain.png',
            const Color.fromRGBO(6, 187, 192, 10),
          ),
           const SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
   buildDoctorList() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
        child: Column(    
          children: <Widget>[
            DoctorCard(
              'د/علي احمد',
              'جراحة قلب',
              'assets/male doctor.png',
              const Color.fromRGBO(6, 187, 192, 10),
            ),
             const SizedBox(
              height: 20,
            ),
            DoctorCard(
              '    د/ منى أحمد  ',
              '     جراحة عامه',
              'assets/female doctor.png',
              const Color.fromRGBO(6, 187, 192, 10),
            ),
            const SizedBox(
              height: 20,
            ),
            DoctorCard(
              'د/ هبه القطان',
              'مخ وأعصاب',
              'assets/doch.png',
              const Color.fromRGBO(6, 187, 192, 10),
            ),
            const SizedBox(
              height: 20,
            ),
            DoctorCard(
              'د/ السيد النجار',
              'جراحة عامة',
              'assets/doc.png',
              const Color.fromRGBO(6, 187, 192, 10),
            ),
            const SizedBox(
              height: 20,
            ),
            DoctorCard(
              'د/ على أحمد',
              'جراحة الأسنان',
              'assets/doc2.png',
              const Color.fromRGBO(6, 187, 192, 10)
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      
    );
  }
}