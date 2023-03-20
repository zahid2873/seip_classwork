import 'package:flutter/material.dart';
import 'package:seipday1/day18/student_model.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  State<ListViewClass> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Total number : ${myList.length}"),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      tileColor: myList[index].name =="Agnila Iqbal"? Colors.lightGreen : myList[index].name == "Apee Karim"? Colors.blue :myList[index].name == "No 1 Sakib Khan"? Colors.pink: Colors.amber,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("${myList[index].image}"),
                      ),
                      title: Text("${myList[index].name}"),
                      subtitle: Text("${myList[index].email}"),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(myList[index].isMale == true ? Icons.male : Icons.female,color: myList[index].isMale==true?Colors.red : Colors.green,)),
                    ),
                  );

                },
              )
            ],
          ),
        ),
      )
    );
  }
}
