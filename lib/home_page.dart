import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.notification_add),
        ],
        title: const Text("First App"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
        leading: const Icon(Icons.menu),
        toolbarHeight: 40,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello! First App",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              '$_count',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
          print('Clicked');
        },
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
    );
  }
}
