import 'package:flutter/material.dart';
import 'package:seipday1/pbhw/product_details.dart';
import 'package:seipday1/pbhw/soft_model.dart';

import 'grid_element.dart';

class GridClass extends StatefulWidget {
  const GridClass({Key? key}) : super(key: key);

  @override
  State<GridClass> createState() => _GridClassState();
}

class _GridClassState extends State<GridClass> {
  final softDrinks = SoftModel.softDrinksInfo();


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     shrinkWrap: true,
     physics: BouncingScrollPhysics(),
     //physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 14,
      crossAxisSpacing: 15,
          childAspectRatio: 0.7,
      crossAxisCount: 2,
    ),
        itemCount: softDrinks.length,
        itemBuilder: (context, index)=>GridElement(softDrinks[index]));
  }
}
