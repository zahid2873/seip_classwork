import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySettingPage extends StatefulWidget {
  const MySettingPage({Key? key}) : super(key: key);

  @override
  State<MySettingPage> createState() => _MySettingPageState();
}

class _MySettingPageState extends State<MySettingPage> {
  MyAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return Container(
        height: 250,
        width: 150,

        child: AlertDialog(
          //backgroundColor: Colors.,
          elevation: 20,
          title: Text("Alert"),
          content: Text("Calling..."),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
               //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MySettingPage()));},
                },
                child: Text("EndCall")),
            //TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
          ],
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Cottage List"),
            centerTitle: true,
            backgroundColor: Colors.blue,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(background: Image.network("https://cdn.thecrazytourist.com/wp-content/uploads/2017/03/Saint-Martin.jpg"),),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Sunset Serenity Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
                onTap: (){
                  MyAlertDialog(context);
                },
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Shayari Eco Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Dream Night Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("King Shuk Eco Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Dream Night Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Music Eco Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Sunset Serenity Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Sunset Serenity Resort"),
                subtitle: Text("01700034004"),
                trailing: Icon(Icons.call),
              ),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.house),
                title: Text("Shayari Eco Resort"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("Dream Night Resort"),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("King Shuk Eco Resort"),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("Dream Night Resort"),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("Music Eco Resort"),
            ),
            Card(
              color: Colors.blue,
              child: ListTile(

                leading: Icon(Icons.house),
                title: Text("Sunset Serenity Resort"),
              ),
            ),
          ]))
        ],
      ),

    );
  }
}
