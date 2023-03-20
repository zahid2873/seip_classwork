import 'package:flutter/material.dart';
import 'package:seipday1/pbhw/product_details.dart';
import 'package:seipday1/pbhw/soft_model.dart';

import 'grid_class.dart';

class GridElement extends StatefulWidget {
   //const GridElement({Key? key}) : super(key: key);
  SoftModel softInfo;
  GridElement(this.softInfo);
   late var details;
  @override
  State<GridElement> createState() => _GridElementState();
}

class _GridElementState extends State<GridElement> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(widget.softInfo)));

      },
      child: Container(
        height: 300,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
                //width: 200,
                child: Image.asset("${widget.softInfo.img}",fit: BoxFit.cover,)),
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: [
                  Text("${widget.softInfo.name}",style: txtName,),
                  Text("${widget.softInfo.makingDate}",style: txtName),
                  Text("${widget.softInfo.mackingLocation}",style: txtName2),
                  //SizedBox(height: 2,),
                  Text("${widget.softInfo.price}",style: txtName2,),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}

const txtName = TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800);
const txtName2 = TextStyle(color: Colors.grey,fontSize: 14,);
