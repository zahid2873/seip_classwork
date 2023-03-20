import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {

  final tagList = ['ALL','⚡ Popular','★ Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>GestureDetector(
              onTap: (){
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                      color:selected==index? Colors.yellow:Colors.grey,
                  border: Border.all(color: selected==index? Colors.green:Colors.red,width: selected==index? 4:2,),
                ),
                 child: Text(tagList[index]),
        ),
            ),
            separatorBuilder: (context,index)=>SizedBox(width: 20,), itemCount: tagList.length),
      ),
    );
  }
}
