
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex=0;

  List<Widget> _demo=[
    Container(height: 300,color: Colors.amber,
      child: Image.network( "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
  ),),
    Container(height: 300,color: Colors.amber,
      child: Image.network( "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
      ),), Container(height: 300,color: Colors.amber,
      child: Image.network( "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
      ),), Container(height: 300,color: Colors.amber,
      child: Image.network( "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
      ),), Container(height: 300,color: Colors.amber,
      child: Image.network( "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
      ),), Container(height: 300,color: Colors.amber,
      child: Image.network( "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png",
      ),),

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: PageView(
            children: _demo,

            onPageChanged: (index){
              setState(() {
                pageIndex=index;
              });
            },
          ),
        ),
        SizedBox(height: 40,),
        CarouselIndicator(
          animationDuration: 200,
          count: _demo.length,
          index: pageIndex,
        ),
      ],
    );
  }
}