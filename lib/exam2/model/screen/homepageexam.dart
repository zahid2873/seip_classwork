import 'package:flutter/material.dart';
import 'package:seipday1/day26/model_class/screens/cart_page.dart';
import 'package:seipday1/exam2/model/screen/heaphonecart.dart';

import '../headphone.dart';

//import '../panjabi_data.dart';

class HomePageExam extends StatefulWidget {
  const HomePageExam({Key? key}) : super(key: key);

  @override
  State<HomePageExam> createState() => _HomePageExamState();
}

class _HomePageExamState extends State<HomePageExam> {
 // List<PanjabiInfo>cartList=[];
  //bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.grey.withOpacity(.3),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          //title: Text("Product"),

          leading: Container(
            margin: EdgeInsets.only(left: 8,top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(.2)
            ),
              child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
          actions: [
            Container(
               // padding: EdgeInsets.only(left: 8,top: 8),
              height: 45,
                width: 45,

                margin: EdgeInsets.only(right: 8,top: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.2)
                ),
                child: Icon(Icons.search,color: Colors.black,)),

          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi-Fi Shop & Service",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w800),),
                SizedBox(height: 10,),
                Text("Audio Shop on Rustaveli Ave57.",style: TextStyle(color: Colors.grey,fontSize: 14),),
                Text("The shops offers both products and services.",style: TextStyle(color: Colors.grey,fontSize: 14),),

                SizedBox(height: 20,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Products",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Text( '41',style: TextStyle(color: Colors.grey,fontSize: 16),)

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Text("Show All",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      //height: 00,
                      width: 350,
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: .7,

                      ),
                          itemCount: headphoneList.length,
                          shrinkWrap: true,
                          //scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index)=>Container(
                       // height: 100,
                        //width: 100,
                        //color: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                 // aspectRatio: .3,
                                  height: 150,
                                  width: 170,
                                    //color: Colors.grey,
                                    child: Image.network("${headphoneList[index].img}",height: 100,fit: BoxFit.cover,)),
                                Container(child: Text("${headphoneList[index].name}",style: TextStyle(color: Colors.black,fontSize: 18),)),
                            Row(
                              children: [
                                Text("Price:"),
                                Text("${headphoneList[index].price}",style: TextStyle(color: Colors.grey,fontSize: 16)),

                                  ]
                                ),
                              ],
                            ),
                      )),
                    ),
                  ],
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Accessories",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text( '19',style: TextStyle(color: Colors.grey,fontSize: 16),)

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    children: [
                      Text("Show All",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

              ],
            ),

                Row(
                  children: [
                    Container(
                      //height: 00,
                      width: 350,
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: .7,

                      ),
                          itemCount: headphoneList.length,
                          shrinkWrap: true,
                          //scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index)=>InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HeadPhoneCart(headphoneList[index])));
                            },
                            child: Container(
                              // height: 100,
                              //width: 100,
                              //color: Colors.black,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // aspectRatio: .3,
                                      height: 150,
                                      width: 170,
                                      //color: Colors.grey,
                                      child: Image.network("${headphoneList[index].img}",height: 100,fit: BoxFit.cover,)),
                                  Container(child: Text("${headphoneList[index].name}",style: TextStyle(color: Colors.black,fontSize: 18),)),
                                  //Text("Available"),
                                  Row(
                                      children: [
                                        Text("Price:"),
                                        Text("${headphoneList[index].price}",style: TextStyle(color: Colors.grey,fontSize: 16)),

                                      ]
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),


              ]
            ),
          ),
        ),


        ),
    );

  }
}
