

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

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

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
  }

  // void getCurrentUser(){
  //   try{
  //     final user = _auth.currentUser;
  //     if ( user != null) {
  //       signedInUser = user;
  //       print(signedInUser.email);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  
  
// void getMessages() async {
//   final messages = await _firestore.collection('messages').get();
//   for(var messages in messages.docs) {
//     print(messages.data());
//   }
// }
void messagesStreams() async {
await for(var snapshot in  _firestore.collection('messages').snapshots()){
  for (var message in snapshot.docs){
    print(message.data());
  }
}
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.only(left:0), 
          child: Row(
            children: [
              Container(
                  width: 40,
                  height: 40,
                  child: Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage("assets/male doctor.jpg")
                        )),
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
                    child: Text("د. على محمد",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  
                ],
              ),
            ]
          ),
          
        ),
         backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
       ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         messagesStreams();
      //         _auth.signOut();
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(Icons.close),
      //     )
      //   ],
      // ),
      body: SafeArea(
        
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
              for (var message in messages) {
                final messageText = message.get('text');
                final messageWidget = MessageLine(text: messageText); 
                
                messageWidgets.add(messageWidget);
              }
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