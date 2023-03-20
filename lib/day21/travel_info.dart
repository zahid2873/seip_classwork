import 'package:flutter/material.dart';
import 'package:seipday1/day21/model_class.dart';

class TravelInfo extends StatelessWidget {
   TravelInfo({Key? key}) : super(key: key);

  final travel_list = ModelClass21.trvelInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView.builder(

          itemCount: travel_list.length,
          itemBuilder: (context, index) {
            var travel = travel_list[index];

            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.network(travel.img,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 40,
                    left: 20.0,
                    child: Column(children: [
                      Text(travel.name,style: TextStyle(color: Colors.white),),
                      Text(travel.location,style: TextStyle(color: Colors.white),),
                    ],)),

                Positioned(
                    right: 10,
                    bottom: -10,
                    child: Container(
                      height: 40,
                      width: 40,

                      child: Icon(Icons.arrow_forward_outlined,),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50)),))

              ],
            );
          }),
    );
  }
}
