import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctor/medical_prescription.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'examine.dart';

class subject extends StatefulWidget {
  const subject({Key? key}) : super(key: key);

  @override
  _subjectState createState() => _subjectState();
}

class _subjectState extends State<subject> {
  final controller = TextEditingController();
  final List images = [
    'assets/2.jpg',
    'assets/1.jpg',
    'assets/3.jpg',
  ];

// var images = [
//     'https://scontent.fcai2-2.fna.fbcdn.net/v/t1.6435-9/123848012_239321700951783_8627681417923127039_n.png?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=yN2zTbBgz7IAX9LtQxR&_nc_ht=scontent.fcai2-2.fna&oh=00_AT8epR3ho0O1wah2wXqk_3fW4RoeItvEMe1ZcZxJHsYm5w&oe=6241AD50',
//     'https://m.gomhuriaonline.com/Upload/News/10-11-2021_20_50_40_GomhuriaOnline_331636570240.jpg',
//     'https://www.elaosboa.com/wp-content/uploads/2022/02/elaosboa57264.jpg'
//   ];

String url='https://altibbi.com/%D9%85%D8%B5%D8%B7%D9%84%D8%AD%D8%A7%D8%AA-%D8%B7%D8%A8%D9%8A%D8%A9/%D9%85%D8%B1%D8%B6-%D8%A7%D9%84%D8%B3%D9%83%D8%B1%D9%8A/%D8%A7%D9%84%D8%B3%D9%83%D8%B1%D9%8A';

void lanchUrl(String url)async{
  await canLaunchUrlString(url)?
  await launchUrlString(url):throw 'error';

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
      
      body: Container(
        //margin: EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Text(
                    " أحمد محمد",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    // textAlign: TextAlign.center,
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/45.jpg"),
                  radius: 30,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 6),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(137, 201, 203, 100),
                  blurRadius: 3,
                  spreadRadius: .5,
                  offset: Offset(0, 2),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
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
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const Text(
              "مواضيع تهمك",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
            Column(children: [
              Container(
                decoration:  BoxDecoration(

                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(137, 201, 203, 100),
                      blurRadius: 5,
                      spreadRadius: .8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * .88,
                height: 240,
                child: Swiper(
                  itemCount: images.length,
                  layout: SwiperLayout.DEFAULT,
                  autoplay: true,
                  pagination: const SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Color.fromRGBO(6, 187, 192, 60),
                    ),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){lanchUrl(url);},
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: InkWell(onTap: (){
                Navigator.push(context, (MaterialPageRoute(builder: (context)=>MedicalPrescription())));
              },
                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 18,
                          child: Image(
                            image: AssetImage(
                              "assets/bottle.png",
                            ),
                            color: Color.fromRGBO(6, 187, 192, 10),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "علاج شهرى",
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
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
                    height: 60,
                    width: MediaQuery.of(context).size.width * .88),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: InkWell(onTap: (){
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PageTwo(),
                              ),
                            );
              },
                child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 20,
                            child: Image(
                              image: AssetImage("assets/h.png"),
                              color: Color.fromRGBO(6, 187, 192, 10),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          FlatButton(
                            child: Text(
                              'فحص',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            color: Colors.white,
                            textColor: Colors.white,
                            minWidth: 50,
                            height: 55,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PageTwo(),
                                ),
                              );
                            },
                          ),
                        ]),
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
                    height: 60,
                    width: MediaQuery.of(context).size.width * .88),
              ),
            ),
            SizedBox(height: 60,),
          ]),
        ),
      ),
    );
  }
}
