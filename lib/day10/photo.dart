import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                 Card(
                     child: SizedBox(
                       width: 190,
                          child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
              ],
            ),
            Row(
              children: [
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
              ],
            ),
            Row(
              children: [
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
              ],
            ),
            Row(
              children: [
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
              ],
            ),
            Row(
              children: [
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
              ],
            ),
            Row(
              children: [
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
                Card(
                    child: SizedBox(
                        width: 190,
                        child: Image.network("https://dailyasianage.com/library/1523127044_3.jpg",))),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
