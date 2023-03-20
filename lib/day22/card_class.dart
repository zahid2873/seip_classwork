import 'package:flutter/material.dart';

import '../day21hw/model/restuarants.dart';

class CardClass extends StatefulWidget {
  const CardClass({Key? key}) : super(key: key);

  @override
  State<CardClass> createState() => _CardClassState();
}

class _CardClassState extends State<CardClass> {
  final trendingRestaurants = Restaurants.restaurantsInfo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
          Container(
            padding: EdgeInsets.only(top: 10),
            //height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),

            ),
            child: ListTile(
              leading: ClipOval(child: Image.network("https://www.creativefabrica.com/wp-content/uploads/2019/08/Restaurant-Logo-by-Koko-Store-580x386.jpg",height: 30,width: 30,fit: BoxFit.cover,)),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Restaurants",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(trendingRestaurants[index].name),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(trendingRestaurants[index].location),
                      ],
                    ),
                  )
                ],
              ),
              trailing: Icon(Icons.bookmark),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemCount: trendingRestaurants.length),
    );
  }
}

