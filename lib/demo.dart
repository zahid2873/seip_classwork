import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,

      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("FINTIMES",style: TextStyle(color: Colors.black,),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  //color: Colors.purple,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        //width: double.infinity,
                        color: Colors.black,
                        child: Text("TOP APP'22",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                      Text("Introducing the first all-in-one tool to help you put your financial assets int the best possible opportunities.",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.red,
                  border: Border.all(color: Colors.black,width: 4),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Text("Strategy",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 28),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.arrow_right,color: Colors.black,)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 60,),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Text("INVESTMENT PROCESS",style: TextStyle(),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Icon(Icons.arrow_forward_outlined),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                 // color: Colors.pinkAccent,
                  border: Border.all(color: Colors.black,width: 4),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Text("Team",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 28)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    child: ClipRRect(borderRadius:BorderRadius.circular(40),child: Image.network("https://designpress.com/wp-content/uploads/2012/07/steve-jobs.jpg",fit: BoxFit.cover,)),
                                  ),
                                  Positioned(
                                    right: 20,
                                      child: Container(
                                    height: 80,
                                    width: 80,
                                    child: ClipRRect(borderRadius:BorderRadius.circular(40),child: Image.network("https://www.mapsofindia.com/ci-moi-images/my-india/2016/12/Narendra-Modi.jpg",fit: BoxFit.cover,)),
                                  )),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Text("CHECK OUR EXPERTES",style: TextStyle(fontSize: 14),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Icon(Icons.arrow_forward_outlined),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                 // color: Colors.orangeAccent,
                  border: Border.all(color: Colors.black,width: 4),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              color: Colors.black,
                              child: Text("W",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white),),
                            ),
                            Container(
                              color: Colors.white,
                              child: Text("I",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black),),
                            ),
                            Container(
                              color: Colors.black,
                              child: Text("R",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white),),
                            ),
                            Container(
                              color: Colors.white,
                              child: Text("E",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black),),
                            ),
                            Container(
                              color: Colors.black,
                              child: Text("D",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white),),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(flex:3,child: Container(child: Text("OUR PARTNERS"))),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Icon(Icons.arrow_forward_outlined),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
