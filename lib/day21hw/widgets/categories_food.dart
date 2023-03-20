import 'package:flutter/material.dart';
import 'package:seipday1/day21hw/model/category.dart';

class CategoriesFood extends StatefulWidget {
  const CategoriesFood({Key? key}) : super(key: key);

  @override
  State<CategoriesFood> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  final categoriesFood = Categories.categoriesInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var category = categoriesFood[index];
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(category.img,height: 150,width: 150,fit: BoxFit.cover,),
                      ),
                      Positioned(
                          top:1,
                          bottom:1,
                          left:1,
                          right:1,
                          child: Center(child: Text(category.name,style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 18),)))
                    ],
                  );
                },
                separatorBuilder:(context,index)=>SizedBox(width: 10,) ,
                itemCount: categoriesFood.length),
          ),

        ],
      ),
    );
  }
}
