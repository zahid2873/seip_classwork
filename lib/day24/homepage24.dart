import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage24 extends StatefulWidget {
  const HomePage24({Key? key}) : super(key: key);

  @override
  State<HomePage24> createState() => _HomePage24State();
}

class _HomePage24State extends State<HomePage24> {
  TextEditingController dateInput = TextEditingController();

  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DatePicker in Flutter"),
          backgroundColor: Colors.redAccent, //background color of app bar
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.width / 3,
            child: Center(
                child: TextField(
                  controller: dateInput,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                  ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                      DateFormat('dd-MM-yyyy').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        dateInput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ))));
  }
}
