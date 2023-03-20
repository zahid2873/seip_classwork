import 'package:flutter/material.dart';

import 'img_list.dart';

class GridViewClass extends StatefulWidget {
  const GridViewClass({Key? key}) : super(key: key);

  @override
  State<GridViewClass> createState() => _GridViewClassState();
}

class _GridViewClassState extends State<GridViewClass> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,

    ),
      itemCount: img.length,
      itemBuilder: (context,index){
      return Container(
        height: 250,
        child: Image.network(img[index]!,fit: BoxFit.cover,),
      );
      },
    );
  }
}
