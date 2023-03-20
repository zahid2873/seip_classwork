import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1628260412297-a3377e45006f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNhcnRvb258ZW58MHx8MHx8&w=1000&q=80",),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Fast Search",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("You Can Search quickly for",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("the you want",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white
            ),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(Icons.search,size: 25,),
                  Text('Search'),
                ],
              ),

            ),




          ],),
      ),
    );
  }
}
