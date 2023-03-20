import 'package:flutter/material.dart';
import 'package:seipday1/day21hw/model/restuarants.dart';

class TreandingRestaurants extends StatefulWidget {
  const TreandingRestaurants({Key? key}) : super(key: key);

  @override
  State<TreandingRestaurants> createState() => _TreandingRestaurantsState();
}

class _TreandingRestaurantsState extends State<TreandingRestaurants> {
  final trendingRestaurants = Restaurants.restaurantsInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: PageView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: trendingRestaurants.length,
            itemBuilder: (context,index){
              var trending = trendingRestaurants[index];
              return Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    //elevation: 20,
                    //shadowColor: Colors.grey,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                          child: Image.network(trending.img,width: MediaQuery.of(context).size.width,height: 250,
                            fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(trending.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text(trending.location,style: TextStyle(fontSize: 14,),)

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 15,
                      right: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),

                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text(trending.rating,),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 15,
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),

                        child: Text("Open",style: TextStyle(color: Colors.green),)
                      ))
                ],
              );
            }),
      ),
    );
  }
}
