import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../botton_screens/botton.dart';
import '../botton_screens/chat.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  final Stream<QuerySnapshot> messages =
      FirebaseFirestore.instance.collection('messages').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Row(
            children: [
              // IconButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return const HomeScreen();
              //     }));
              //   },
              //   icon: const Icon(
              //     Icons.arrow_back_ios,
              //     size: 30,
              //   ),
              //   color: Colors.white,
              // ),
              Container(
                  width: 50,
                  height: 50,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage("assets/45.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(6, 187, 192, 10),
                            border: Border.all(color: Colors.white, width: 2)),
                      ),
                    ),
                  ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Text("أحمد محمد",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
         
          Align(
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    " اليوم ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "RobotoBold",
                      fontSize: 15,
                    ),
                  ),
                ),
                StreamBuilder<QuerySnapshot>(
                  stream: messages,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const BlackText(text: 'something went wrong');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const BlackText(text: 'Loading');
                    }
                    final data = snapshot.requireData;
                    return Container(alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height*0.8,
                      width: 308,
                      child: ListView.builder(reverse: true,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Material(
                                            elevation: 5,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight:
                                                  Radius.circular(30),
                                            ),
                                            color: MyColors().white,
                                            child: SmallGreyText(
                                              text:
                                                  '   ${data.docs[index]['text']}     ',
                                              size: 16,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                            ],
                          );
                        },
                        itemCount: data.size,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
