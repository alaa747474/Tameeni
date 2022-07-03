import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../botton_screens/botton.dart';
import '../botton_screens/chat.dart';

final _firestore = FirebaseFirestore.instance;
class DetailChat extends StatefulWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  String? messageText;

  final Stream<QuerySnapshot> messages =
  FirebaseFirestore.instance.collection('messages').snapshots();

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
  }
void messagesStreams() async {
await for(var snapshot in  _firestore.collection('messages').snapshots()){
  for (var message in snapshot.docs){
  print(message.data());
  }
}
}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Row(
            children: [
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
      body: 
      
      Container(
        
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
        child: Stack(children: [
         SafeArea(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MessageStreamBuilder(),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color:  Color.fromRGBO(6, 187, 192, 1),
                    width: 2,
          
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration:const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: '........أكتب هنا',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageTextController.clear();
                      _firestore.collection('messages').add({
                        'text': messageText,
                        'time' : FieldValue.serverTimestamp(),
                      });
                    },
                    child:const Text(
                      'إرسال',
                      style: TextStyle(
                        color:  Color.fromRGBO(6, 187, 192, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
          
            ),
            
          ],
        ),
         ),
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
                                      
                                      children: [
                                        Material(
                                            elevation: 5,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(30),
                                            ),
                                            color: MyColors().white,
                                            child: SmallGreyText(
                                              text:
                                                  '${data.docs[index]['text']}',
                                              size: 17, 
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
class MessageStreamBuilder extends StatelessWidget {
  const MessageStreamBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('messages').orderBy('time').snapshots(),
            builder:(context , snapshot) {
              List<MessageLine> messageWidgets = [];

              if (!snapshot.hasData){
               return const Padding(
                 padding:  EdgeInsets.only(top: 10.0),
                 child: Center(
                  child:  CircularProgressIndicator(
                    backgroundColor: Color.fromRGBO(6, 187, 192, 1),),
                       ),
               );
              }
              
               final messages = snapshot.data!.docs.reversed;
              // for (var message in messages) {
              //   final messageText = message.get('text');
              //   final messageWidget = MessageLine(text: messageText); 
                
              //   messageWidgets.add(messageWidget);
              // }
              return Expanded(
                child: ListView(
                reverse: true,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageWidgets,
                ),
              );
            },
            );
  }
}

class MessageLine extends StatelessWidget {
  const MessageLine ({this.text, Key? key }) : super(key: key);
final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Material(
            elevation: 5,
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: const Color.fromRGBO(6, 187, 192, 1),
            child: Text('  $text  ', 
                        style:const TextStyle(fontSize: 22, color: Colors.white)),
          ),
        ],
      ),
    );
      
    
  }
}