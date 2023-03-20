import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: [
      CarouselSlider(
      items: [

      //1st Image of Slider
      Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4OcOpWa9C6S29Ck6rHL_bskir9ujmyCWPVQ&usqp=CAU"),
          fit: BoxFit.cover,
        ),
      ),
    ),

    //2nd Image of Slider
    Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4OcOpWa9C6S29Ck6rHL_bskir9ujmyCWPVQ&usqp=CAU"),
    fit: BoxFit.cover,
    ),
    ),
    ),

    //3rd Image of Slider
    Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4OcOpWa9C6S29Ck6rHL_bskir9ujmyCWPVQ&usqp=CAU"),
    fit: BoxFit.cover,
    ),
    ),
    ),

    //4th Image of Slider
    Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4OcOpWa9C6S29Ck6rHL_bskir9ujmyCWPVQ&usqp=CAU"),
    fit: BoxFit.cover,
    ),
    ),
    ),
        //5th Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOvcSU-XOPffRJytYJNdOqKKqV5wpcTP6ApQ&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),
        ),

      ],

        //Slider Container properties
        options: CarouselOptions(
          height: 200,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 200),
          viewportFraction: 0.8,

        ),

      ),

          ],
      ),

    );
  }

}
