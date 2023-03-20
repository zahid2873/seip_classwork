import 'package:flutter/material.dart';

class ClevelandPage extends StatelessWidget {
  const ClevelandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.deepPurple,
        title: Text("Cleveland"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          //Image.network("https://www.foodiecrush.com/wp-content/uploads/2018/04/Killer-Rosemary-Garlic-Fries-foodiecrush.com-010.jpg",height: 250,width: double.infinity,fit: BoxFit.cover,),

          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: Card(
                    //color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //SizedBox(height: 250,),
                        Image.network("https://www.foodiecrush.com/wp-content/uploads/2018/04/Killer-Rosemary-Garlic-Fries-foodiecrush.com-010.jpg",height: 300,width: double.infinity,fit: BoxFit.cover,),
                        ListTile(
                          title: Text("T R A V E L",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("5 Cheap Eats",style: TextStyle(fontSize: 28,color: Colors.black),),
                          ),
                          trailing: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                              child: Image.network("https://i0.wp.com/www.memelate.com/wp-content/uploads/2021/03/5-1.png?fit=1000%2C532&ssl=1",height: 50,width: 50,fit: BoxFit.cover,))
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0,top: 18),
                          child: Text("So you have 1 day to spare in Cleveland, tehse",style: TextStyle(fontSize: 16,color: Colors.black54),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text("are the 5 spots you need to hit before you leave.",style: TextStyle(fontSize: 16,color: Colors.black54),),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0,top: 8),
                              child: MaterialButton(
                                color: Colors.deepPurple,
                                onPressed: (){},child: Text("VIEW ENTRY",style: TextStyle(color: Colors.white)),),
                            ),
                            SizedBox(width: 20,),
                            TextButton(
                              onPressed: (){}, child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text("LEARN MORE",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w700)),
                              ),)

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),


                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.only(right: 4,left: 4),
                    //color: Colors.red,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmHC_XQ6tAB8oUokfeIB2Bg1d5B3zw1AMHvA&usqp=CAU",width:double.infinity,fit: BoxFit.cover,),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 458,
            child: Container(
              height: 2,
              width: 24,
              color: Colors.pinkAccent,
            ),
          ),
          Positioned(
            top: 458,
            right: 0,
            child: Container(
              height: 2,
              width: 140,
              color: Colors.pinkAccent,
            ),
          ),

          Positioned(
            bottom: 20,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  height: 50,
                  width: 170,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("+ ",style: TextStyle(fontSize: 24,color: Colors.white),),
                      Text(" ADD ENTRY",style: TextStyle(fontSize: 16,color: Colors.white),),
                    ],
                  )
                ),
              ),
          ),
          Positioned(
            bottom: 43,
            left: 0,
            child: Container(
              height: 2,
              width: 111,
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),

    );
  }
}
