import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,height: 50,
                         decoration: BoxDecoration(
                           border: Border.all(color: MyColors().primaryColor,),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Center(
                           child: Row(mainAxisAlignment: MainAxisAlignment.center,
                           children: [Icon(Icons.cloud_upload,color: MyColors().primaryColor,),
                           const SizedBox(width: 10,),
                           const BlackText(text: 'اضافة ملف')
                           ],
                           ),
                         ),
                         );
  }
}