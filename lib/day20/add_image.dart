import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  Icon ?icon;
  XFile ? img;
  ChooseImageFromCamera() async {
    ImagePicker _picker = ImagePicker();
    img = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }
  ChooseImageFromGallery() async {
    ImagePicker _picker = ImagePicker();
    img = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  MyCameraAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Icon(Icons.camera_alt,size: 25,color: Colors.blue,),
        content: Text("Allow camera to take picture and record video?",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w400),),
        actions: [
          Column(
            children: [
              Container(height: 1,width: double.infinity,color: Colors.grey,),
              TextButton(onPressed: (){ChooseImageFromCamera();}, child: Text("Allow",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w400),)),
              Container(height: 1,width: double.infinity,color: Colors.grey,),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Deny",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w400),)),
              Container(height: 1,width: double.infinity,color: Colors.grey,),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Deny & don't ask again",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w400),)),
             // Container(height: 1,width: double.infinity,color: Colors.grey,),

            ],
          )
        ],
      );
    });
  }

  MyGalleryAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Icon(Icons.camera_alt,size: 25,color: Colors.blue,),
        content: Text("Allow gallery to upload picture and record video?",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w400),),
        actions: [
          Column(
            children: [
              Container(height: 1,width: double.infinity,color: Colors.grey,),
              TextButton(onPressed: (){ChooseImageFromGallery();}, child: Text("Allow",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w400),)),
              Container(height: 1,width: double.infinity,color: Colors.grey,),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Deny",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w400),)),
              Container(height: 1,width: double.infinity,color: Colors.grey,),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Deny & don't ask again",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w400),)),
              //Container(height: 1,width: double.infinity,color: Colors.grey,),

            ],
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
      child: img==null? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            //backgroundColor: Colors.white,
              child: IconButton(icon: Icon(Icons.camera_alt),onPressed: (){
                MyCameraAlertDialog(context);
              },)
          ),
          SizedBox(width: 25,),
          Expanded(
            //backgroundColor: Colors.white,
              child:  IconButton(icon: Icon(Icons.photo_album),onPressed: (){
                  MyGalleryAlertDialog(context);
              },)//: Image.file(File(img!.path)) img==null?
          ),
        ],
      ): Image.file(File(img!.path)),
    );
  }
}
