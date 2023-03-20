import 'package:flutter/material.dart';

class ButtonClass extends StatelessWidget {
  //const ButtonClass({Key? key}) : super(key: key);
  MySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  ButtonStyle buttonStyle = TextButton.styleFrom(
    elevation: 20,
    backgroundColor: Colors.red,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))

  );
  ButtonStyle buttonStyle2 = ElevatedButton.styleFrom(
    elevation: 20,
    backgroundColor: Colors.green,

  );
  ButtonStyle buttonStyle3 = OutlinedButton.styleFrom(
    elevation: 20,
    backgroundColor: Colors.amber,
    side: BorderSide(color: Colors.red,width: 5),
  );

  ButtonStyle buttonStyle4 = IconButton.styleFrom(


  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Button"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){MySnackBar(context, "This is Text Button");}, child: Text("TextButton"),style: buttonStyle,),
          ElevatedButton(onPressed: (){MySnackBar(context, "This is Elavetd Button");}, child: Text('ElavetedButton'),style: buttonStyle2,),
          OutlinedButton(onPressed: (){MySnackBar(context, "This is Outline Button");}, child: Text('OutlineButton'),style: buttonStyle3,),
          IconButton(onPressed: (){MySnackBar(context, "This is IconButton");}, icon: Icon(Icons.home,size: 40,color: Colors.indigo,),style: buttonStyle4,),
          GestureDetector(onTap: (){MySnackBar(context, "This is custom button");},
            child: Container(
              //alignment: Alignment.center,
              height: 40,
              width: 120,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(width: 3),
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text("CustomButton"),
            ),
          ),
          Container(
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
               // border: Border.all(width: 3)
              ),
              child: Row(
               // AxisAlignment: MAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Menu"),
                  Container(
                    alignment: Alignment.bottomRight,
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(width: 3)
                    ),
                    child: Text("Menu"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )
      ,);
  }
}
