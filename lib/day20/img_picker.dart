import 'package:flutter/material.dart';
import 'package:seipday1/day20/add_image.dart';

import 'gridview.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({Key? key}) : super(key: key);

  @override
  State<ImagePickerClass> createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {



  addImage(){
    return showModalBottomSheet(context: context, builder: (context)=>AddImage());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePicker"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addImage();

        },
        child: Icon(Icons.add),
      ),
      body: GridViewClass(),
    );
  }
}
