import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
       // color: Colors.black,
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          fit: BoxFit.cover,
            image:NetworkImage("https://thumbs.dreamstime.com/b/beautiful-pink-smoke-abstract-white-background-fo-design-beautiful-pink-smoke-abstract-white-background-fo-design-166737191.jpg",)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("APR",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black),),
            Text("Personal SoftDrinks \n selector",style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
