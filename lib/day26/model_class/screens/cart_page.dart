import 'package:flutter/material.dart';

import '../panjabi_data.dart';

class CartPage extends StatefulWidget {
  List<PanjabiInfo> ?cartItem;
   CartPage({Key? key,this.cartItem}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var netTotal;

  void getTotal(){
    netTotal = widget.cartItem!.map((item) => item.price!.toInt() * item.quantity )
        .reduce((value, element) => value+element);
  }
  @override
  void initState()  {
    // TODO: implement initState
    widget.cartItem!.length>0?  getTotal() :null;
    //print("ikhdfdasgasiuasgifruisrgfsdgfiusdgfiuosdghfiudg");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.3),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Cart"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: ListView.separated(shrinkWrap: true, itemBuilder: (context,index)=>Container(
              color: Colors.teal.withOpacity(0.5),
              height: 150,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network("${widget.cartItem![index].img}",width: 120,height: 150,fit: BoxFit.cover,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${widget.cartItem![index].name}",style: TextStyle(fontSize: 14),),
                            SizedBox(height: 3,),
                            Text("Code: ${widget.cartItem![index].code}",),
                            SizedBox(height: 3,),
                            Text("Price: ${widget.cartItem![index].price! * widget.cartItem![index].quantity}",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 90,),
                                InkWell(
                                  onTap: (){
                                    widget.cartItem![index].quantity >0? widget.cartItem![index].quantity-- :widget.cartItem!.removeAt(index);
                                    getTotal();
                                    setState(() {

                                    });

                                  },
                                  child: CircleAvatar(
                                      backgroundColor:Colors.grey,
                                      child: Icon(Icons.remove)),
                                ),
                                SizedBox(width: 7,),
                                Text("${widget.cartItem![index].quantity}"),
                                SizedBox(width: 7,),
                                InkWell(
                                  onTap: (){
                                    widget.cartItem![index].quantity++;
                                    getTotal();
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
                                    widget.cartItem!.removeAt(index);
                                    getTotal();
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
                        ),
                      ),



                    ],
                  ),
                ],
              ),
            ), separatorBuilder: (context,index)=>SizedBox(height: 10,), itemCount: widget.cartItem!.length)),
            MaterialButton(
              height: MediaQuery.of(context).size.height*.1,
              minWidth: double.infinity,
              color: Colors.green,
              onPressed: (){},child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Selected Item :\n ${widget.cartItem!.length}"),
                Text("Total Price: \n ${netTotal??0}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Icon(Icons.shopping_cart),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
