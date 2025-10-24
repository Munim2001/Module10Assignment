import 'package:flutter/material.dart';
import 'package:ostad_assignment2/asset_info.dart';
import 'package:ostad_assignment2/course_card.dart';
import 'package:ostad_assignment2/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}

// CourseCard(courseDetails: AssetInfo.assetInfo[0],),
