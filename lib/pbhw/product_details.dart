import 'package:flutter/material.dart';
import 'package:seipday1/pbhw/soft_model.dart';

class ProductDetails extends StatefulWidget {
  //const ProductDetails({Key? key}) : super(key: key);
  SoftModel _productInfo;
  ProductDetails(this._productInfo);


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
 // final softDrinks = SoftModel.softDrinksInfo();
  //int currentIndex = 1;
  List yearList = ["2016","2017","2018"];
  int currentIndex = 1;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),

        ],
      ),
      body: Column(
        children: [
          //ProductDetails(widget._productInfo),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 300,
                width: 200,
                child: Image.asset(widget._productInfo.img)),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: currentIndex==0?  Colors.yellow:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white70,)
                    ),
                  child: Text("2016"),
                  ),
              ),
              SizedBox(width: 8,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex==1?  Colors.yellow:Colors.white,
                      border: Border.all(color: Colors.white70,)
                  ),
                  child: Text("2017"),
                ),
              ),
              SizedBox(width: 8,),
              GestureDetector(
                onTap: (){
                    setState(() {
                      currentIndex = 2;
                    });

                },
                child: Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: currentIndex==2?  Colors.yellow:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white70,)
                  ),
                  child: Text("2018"),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 385,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18,left: 18,bottom: 14,right: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${widget._productInfo.name}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("${widget._productInfo.mackingLocation}"),
                            ),
                            Container(
                              child: Text("★5.0"),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 290,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Expanded(child: Container(
                                padding: EdgeInsets.only(top: 14,bottom: 14),

                                decoration:BoxDecoration(
                                  color:Colors.grey.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),

                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.fastfood),
                                    Text("20/25"),
                                  ],
                                ),
                              )),
                              Expanded(child: Container(
                                padding: EdgeInsets.only(top: 14,bottom: 14),

                                decoration:BoxDecoration(
                                  color:Colors.grey.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),

                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.fastfood),
                                    Text("20/25"),
                                  ],
                                ),
                              )),
                              Expanded(child: Container(
                                padding: EdgeInsets.only(top: 14,bottom: 14),
                                decoration:BoxDecoration(
                                  color:Colors.grey.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),

                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.fastfood),
                                    Text("20/25"),
                                  ],
                                ),
                              )),
                              Expanded(child: Container(
                                padding: EdgeInsets.only(top: 14,bottom: 14),

                                decoration:BoxDecoration(
                                  color:Colors.grey.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white),

                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.fastfood),
                                    Text("20/25"),
                                  ],
                                ),
                              )),

                            ],
                          ),
                        ),
                        SizedBox(height: 10),

                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 130,
                  right: 10,
                  child: Container(
                    margin: EdgeInsets.only(left:14,right: 14),
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(35),bottomRight: Radius.circular(35),),
                    ),
                    child: Center(child: Text("Features")),
                  ),
                ),
                Positioned(
                  bottom: 131,
                  left: 10,
                  child: Container(
                    margin: EdgeInsets.only(left:14,right: 14),
                    height: 58,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(child: Text('Description')),
                  ),
                ),
                Positioned(
                  bottom:5,
                  right: 5,
                  left: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 14,right: 14),
                      height: 90,
                      width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(50),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                          child: Text("Add to Cart",style: TextStyle(color: Colors.white),)
                      ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("${widget._productInfo.price}",style: TextStyle(color: Colors.white)),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text("+35 ⚡"),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    ),
                  ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
