import 'package:flutter/material.dart';
import 'package:ostad_assignment2/asset_info.dart';
import 'package:ostad_assignment2/course_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 25),
          itemCount: AssetInfo.assetInfo.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2.5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (context, index) {
            
            final asset = AssetInfo.assetInfo[index];
            return CourseCard(courseDetails: asset);
            
          },
        ),
      ),
    );
  }
}
