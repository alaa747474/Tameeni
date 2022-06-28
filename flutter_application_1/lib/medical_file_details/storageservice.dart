
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:firebase_core/firebase_core.dart' as firebase_core;

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

      Future<void>uploadFile(
        String filePath,String fileName
      )async{
        File file=File(filePath);
         try{
           await storage.ref('rays/$fileName').putFile(file);
         }on firebase_core.FirebaseException catch(e){
           print(e);
         }
      }


      Future<firebase_storage.ListResult> listFiles()async{
        firebase_storage.ListResult results= await storage.ref('rays').listAll();
        results.items.forEach((firebase_storage.Reference ref) { 
          print('found file :$ref');
        });
        return results;
      }

      Future<String>downloadUrl(String imageName)async{
        String dowmloadUrl=await storage.ref('rays/$imageName').getDownloadURL();
        return dowmloadUrl;
      }
}
