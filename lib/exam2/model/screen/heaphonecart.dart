import 'package:flutter/material.dart';

import '../headphone.dart';

class HeadPhoneCart extends StatefulWidget {
  //const HeadPhoneCart({Key? key}) : super(key: key);
  HeadphoneInfo _headphoneInfoInfo;
  HeadPhoneCart(this._headphoneInfoInfo);

  @override
  State<HeadPhoneCart> createState() => _HeadPhoneCartState();
}

class _HeadPhoneCartState extends State<HeadPhoneCart> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: Text("Order Details"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Cart",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,

              child: Row(
                children: [
                  Image.network("${widget._headphoneInfoInfo.img}"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget._headphoneInfoInfo.name}",),
                      Text("${widget._headphoneInfoInfo.price}"),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              // widget._headphoneInfoInfo!.quantity >0? widget.cartItem![index].quantity-- :widget.cartItem!.removeAt(index);
                              // getTotal();
                              quantity--;
                              setState(() {

                              });

                            },
                            child: CircleAvatar(
                                backgroundColor:Colors.grey,
                                child: Icon(Icons.remove)),
                          ),
                          SizedBox(width: 7,),
                          Text("$quantity"),
                          SizedBox(width: 7,),
                          InkWell(
                            onTap: (){
                              quantity++;
                              // getTotal();
                              setState(() {

                              });
                            },
                            child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.add)),
                          ),
                          SizedBox(width: 15,),

                          InkWell(
                            onTap: (){
                              // widget.cartItem!.removeAt(index);
                              // getTotal();
                              setState(() {

                              });
                            },
                            child: CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Icon(Icons.delete)),
                          )
                        ],
                      ),

                    ],
                  )
                ],
              ),

            )
          ],
        ),

      ),
    );
  }
}
