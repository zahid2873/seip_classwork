import 'package:flutter/material.dart';
import 'package:seipday1/day21hw/widgets/categories_food.dart';
import 'package:seipday1/day21hw/widgets/trending_restaurants.dart';

class HomePageHW extends StatefulWidget {
  const HomePageHW({Key? key}) : super(key: key);

  @override
  State<HomePageHW> createState() => _HomePageHWState();
}

class _HomePageHWState extends State<HomePageHW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Card(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search..",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.more_vert)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18,bottom: 10,right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Trending Restaurants",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                      TextButton(onPressed: (){}, child: Text("See all(43)")),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                    child: TreandingRestaurants()),

                Padding(
                  padding: const EdgeInsets.only(left: 18,bottom: 10,right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                      TextButton(onPressed: (){}, child: Text("See all(9)")),
                    ],
                  ),
                ),

                Expanded(
                  flex: 1,
                    child: CategoriesFood()),
                SizedBox(height: 20,),
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: EdgeInsets.only(right: 14,left: 14),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Card(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(Icons.home),
                         Icon(Icons.messenger_rounded),
                         SizedBox(),
                         Icon(Icons.notifications),
                         Icon(Icons.person),

                       ],
                     ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 4,
                    width: 120,
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 35,
                left: 50,
                right: 50,
                child: FloatingActionButton(
                  elevation: 20,
                  onPressed: (){},child: Text("+",style: TextStyle(fontSize: 24),),)),


          ],
        ),
      ),
    );
  }
}
