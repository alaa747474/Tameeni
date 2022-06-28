import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class BuildImagePicker extends StatefulWidget {
  const BuildImagePicker({Key? key}) : super(key: key);

  @override
  State<BuildImagePicker> createState() => _BuildImagePickerState();
}

class _BuildImagePickerState extends State<BuildImagePicker> {
  bool visible = true;
  File? fileImage;

  static Future<File?> getImage() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      File imageFile = File(image.path);
      return imageFile;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      child: Visibility(
          visible: visible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  var image = await getImage();
                  if (image != null) {
                    fileImage = image;
                    setState(() {
                      visible = false;
                    });
                  }
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "تسجيل الدخول ",
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          replacement: Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(fileImage ?? File("")),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          )),
    );
  }
}
