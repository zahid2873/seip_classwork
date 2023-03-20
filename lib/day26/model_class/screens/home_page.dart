import 'package:flutter/material.dart';
import 'package:seipday1/day26/model_class/screens/cart_page.dart';

import '../panjabi_data.dart';

class HomePage26 extends StatefulWidget {
  const HomePage26({Key? key}) : super(key: key);

  @override
  State<HomePage26> createState() => _HomePage26State();
}

class _HomePage26State extends State<HomePage26> {
  List<PanjabiInfo>cartList=[];
  //bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey.withOpacity(.3),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Product"),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: .68,
                ),
                    shrinkWrap: true,
                    itemCount: panjabiList.length,

                    itemBuilder: (context,index)=>Container(color: Colors.teal.withOpacity(0.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 1.2,
                              child: Image.network("${panjabiList[index].img}",width: double.infinity,fit: BoxFit.cover,)),
                          SizedBox(height: 5,),
                          Text("${panjabiList[index].name}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("Code: ${panjabiList[index].code}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14)),
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Price: ${panjabiList[index].price}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: InkWell(
                                onTap: (){
                                  try{
                                    cartList.firstWhere((element) => element.code==panjabiList[index].code,);
                                    var snackBar = SnackBar(content: Text('Already Added this item'),);
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);



                                  }
                                  catch(e){
                                    panjabiList[index].isPressed = true;

                                    cartList.add(panjabiList[index]);
                                    setState(() {

                                    });
                                  }


                                },
                                  child: Icon(Icons.shopping_cart,size: 24,color: panjabiList[index].isPressed? Colors.green:Colors.red,)),
                            )
                          ],),

                        ],
                      ),
                    ))),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              color: Colors.green,
              height: size.height *.1,
              minWidth: double.infinity,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage(cartItem: cartList,)));
              },child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Selected Item :\n ${cartList.length}"),
                  Text("Add to Cart"),
                  Icon(Icons.shopping_cart),
                ],
              ),)
          ],
        ),
      ),
    ));
  }
}
