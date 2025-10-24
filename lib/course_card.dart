import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Map<String, dynamic> courseDetails;
  const CourseCard({super.key, required this.courseDetails});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Card(
          child: Column(
                children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12) , topRight: Radius.circular(12)),
            child: Image.asset(courseDetails['imagePath'])),
          Padding(
            padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10),
            child: SizedBox(
              height: 70,
              child: Text(
                '${courseDetails['title']}',
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: Colors.grey[300],
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          const Icon(Icons.people, size: 16),
                          const SizedBox(width: 2),
                          Text(
                            '${courseDetails['detailInfo']![1]} সিট বাকি',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: Colors.grey[300],
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          const Icon(Icons.lock_clock, size: 16),
                          const SizedBox(width: 2),
                          Text(
                            '${courseDetails['detailInfo']![2]} দিন বাকি',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 0.25,
            color: Colors.grey,
          ),
          Container(
              margin: const EdgeInsets.only(top: 5),
              width: 165,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
              child: TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'বিস্তারিত দেখি',
                  style: TextStyle(color: Colors.black),
                ),
                icon: const Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.black,
                ),
              ))
                ],
              ),
        ));
  }
}
