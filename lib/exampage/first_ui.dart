import 'package:flutter/material.dart';

class ExamPage1 extends StatelessWidget {
  const ExamPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FINTIMES"),
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.menu)
        ],
      ),
    );
  }
}
