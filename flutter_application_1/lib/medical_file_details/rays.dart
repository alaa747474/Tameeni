import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/medical_file_details/rays_button.dart';
import 'package:flutter_application_1/medical_file_details/storageservice.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Rays extends StatefulWidget {
  const Rays({Key? key}) : super(key: key);

  @override
  State<Rays> createState() => _RaysState();
}

class _RaysState extends State<Rays> {
  @override
  Widget build(BuildContext context) {
    final Storage storage=Storage();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: MyColors().primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/tameni.png',
                        width: 50,
                        height: 50,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const WhiteText(text: 'رجوع', size: 20))
                    ],
                  ),
                )),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.87,
                  decoration: BoxDecoration(
                    color: MyColors().white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz)),
                        ),
                        const BlackText(text: 'الاشاعات'),
                        FutureBuilder(
                          future: storage.listFiles(),
                          builder:(BuildContext context,AsyncSnapshot<firebase_storage.ListResult> snapShot){
                            if (snapShot.connectionState==ConnectionState.done && snapShot.hasData) {
                              return Container(height: 100,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapShot.data!.items.length,
                                  itemBuilder:(BuildContext context,int index){
                                    return BlackText(text: snapShot.data!.items[index].name) ;
                                  } ),
                              );
                            }
                            if (snapShot.connectionState==ConnectionState.waiting ||  snapShot.hasData) {
                              return  Container();
                              
                            }
                            return Container();

                          } ),



                  FutureBuilder(
                          future: storage.downloadUrl('img_1.jpg'),
                          builder:(BuildContext context,AsyncSnapshot<String> snapShot){
                            if (snapShot.connectionState==ConnectionState.done && snapShot.hasData) {
                              return Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),height:100,
                                child: Image.network(snapShot.data!)
                              );
                            }
                            if (snapShot.connectionState==ConnectionState.waiting ||  snapShot.hasData) {
                              return Container(
                                width: 100,height: 30,
                                child: CircularProgressIndicator(
                                  
                                  color:MyColors().primaryColor,
                                ),
                              );
                              
                            }
                            return BlackText(text: 'لا توجد اشاعات');

                          } ),




                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            onTap: () async {
                              final results = await FilePicker.platform
                                  .pickFiles(
                                      allowMultiple: false,
                                      type: FileType.custom,
                                      allowedExtensions: ['png', 'jpg','jpeg']);
                              if (results == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('no file selected')));
                                        return;
                              }
                              final path=results.files.single.path!;
                              final fileName=results.files.single.name;
                              storage.uploadFile(path, fileName).then((value) => print('done'));

                            },
                            child: const UploadFile()),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
