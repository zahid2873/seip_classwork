import 'package:flutter/material.dart';

class UIDesign extends StatelessWidget {
  const UIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGO"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset("images/company-logo-ideas-32505.png",width: double.infinity,fit: BoxFit.cover,),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.yellow,
                      child: Image.asset("images/company-logo-ideas-32530.png",width: double.infinity,),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.black,
                              child: Image.asset("images/company-logo-ideas-32533.png",width: double.infinity,),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              child: Image.asset("images/p2.png",height:double.infinity,fit: BoxFit.cover,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Container(
                      color: Colors.yellow,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.orange,
                              child: Icon(Icons.logo_dev,size: 50)

                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.brown,
                              child: Image.asset("images/company-logo-ideas-32528.png",width: double.infinity,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex:1,
            child: Container(
              color: Colors.greenAccent,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                        child: Image.asset("images/company-logo-ideas-32508.png",width: double.infinity,),

                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.yellow,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex:3,
                                    child: Container(
                                      color: Colors.blue,
                                      child: Image.network("https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png",width: double.infinity,fit: BoxFit.cover,),

                                    ),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: Container(
                                      color: Colors.yellow,
                                      child: Image.asset("images/p01.png",width: double.infinity,),

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.brown,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.green,
                                      child: Image.asset("images/company-logo-ideas-32526.png",width: double.infinity,),

                                    ),
                                  ),
                                  Expanded(
                                    flex:3,
                                    child: Container(
                                      color: Colors.grey,
                                      child: Image.network("https://miro.medium.com/max/1400/1*_9b6Zt10K0cBB5vJNAhA7A.jpeg",fit: BoxFit.cover,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
