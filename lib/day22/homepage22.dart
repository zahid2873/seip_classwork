import 'package:flutter/material.dart';
import 'package:seipday1/day22/card_class.dart';
import 'package:seipday1/day22/home_appbar.dart';
import 'package:seipday1/day22/search.dart';
import 'package:seipday1/day22/tag_list.dart';

import '../day21hw/widgets/categories_food.dart';
import '../day23/company_list.dart';

class HomePage22 extends StatefulWidget {
  const HomePage22({Key? key}) : super(key: key);

  @override
  State<HomePage22> createState() => _HomePage22State();
}

class _HomePage22State extends State<HomePage22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                  child: Container(
                    color: Colors.white,
                  )),
              Expanded(
                flex: 2,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  )),
            ],
          ),
          Column(
            children: [
              HomeAppBar(),
              Search(),
              TagList(),
             CompanyList(),
             // Container(
             //   padding: EdgeInsets.only(left: 14),
             //   height: 150,
             //   width: double.infinity,
             //   //color: Colors.red,
             //   child: CardClass(),
             // ),
              // Size++dBox(height: 20,),
              // Container(
              //   height: 150,
              //   width: double.infinity,
              //   //color: Colors.red,
              //   child: CategoriesFood(),
              // ),

            ],

          ),


        ],
      ),
    );
  }
}
