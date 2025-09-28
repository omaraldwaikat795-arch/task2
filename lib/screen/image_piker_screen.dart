import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImagePikerScreen extends StatefulWidget {
  const ImagePikerScreen({super.key});

  @override
  State<ImagePikerScreen> createState() => _ImagePikerScreenState();
}

class _ImagePikerScreenState extends State<ImagePikerScreen> {
  File? _image;
  final  ImagePicker _picker = ImagePicker();
  Future getimage (ImageSource source)async{
    final XFile? image = await _picker.pickImage(source: source);
    setState(() {
      _image = File(image!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        title: Text("image picker"),
      ),

      body: Center(
        child: Column (
        children: [
          _image !=  null ? Image.file(_image!) : Text("image "),
          ElevatedButton(onPressed: () {
            getimage(ImageSource.camera);
          }, child: Text("camira")),

          ElevatedButton(onPressed: () {
            getimage(ImageSource.gallery);
          }, child: Text("gallery")),
          ],
        ),
      ),

    );
  }
}
