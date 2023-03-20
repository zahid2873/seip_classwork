import 'package:flutter/material.dart';
import 'package:seipday1/day22/homepage22.dart';
import 'package:seipday1/exam/first_ui.dart';
import 'package:seipday1/exampage/first_ui.dart';
import 'package:seipday1/home_page.dart';

import 'day10/curve_navigation.dart';
import 'day10/navigation.dart';
import 'day11/drawear.dart';
import 'day12/page1.dart';
import 'day13/login.dart';
import 'day14/home_page14.dart';
import 'day18/listview_builder.dart';
import 'day19/bmi_page.dart';
import 'day20/img_picker.dart';
import 'day20hw/cleveland_home.dart';
import 'day21/splash.dart';
import 'day21hw/splash_page.dart';
import 'day24/homepage24.dart';
import 'day24/timepicker.dart';
import 'day26/model_class/screens/home_page.dart';
import 'day29/cache_network.dart';
import 'day29/carousel.dart';
import 'day29/carousel_indicator.dart';
import 'day4/login.dart';
import 'day5/row_column.dart';
import 'day6/button.dart';
import 'day7/uidesign.dart';
import 'demo.dart';
import 'exam2/model/screen/homepageexam.dart';
import 'pbhw/homepagepbhw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageExam(),
    );
  }
}
