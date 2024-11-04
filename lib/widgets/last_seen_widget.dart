// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/onlinecourse.dart';
import '../views/home/course_view_page.dart';

// ignore: must_be_immutable
class LastSeenWidget extends StatelessWidget {
  OnlineCourse course;
  LastSeenWidget({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.to(()=>CourseDetailsScreen(course: course,)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFE8EAF6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.assignment_outlined,
                  color: Color(0xFF5C6BC0),
                  size: 36,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      formatDuration(course.duration),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF5C6BC0), width: 2),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Color(0xFF5C6BC0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatDuration(int minutes) {
    int hours = minutes ~/ 60; // Integer division to get hours
    int remainingMinutes = minutes % 60; // Remainder to get remaining minutes

    if (hours > 0 && remainingMinutes > 0) {
      return '$hours hr $remainingMinutes min';
    } else if (hours > 0) {
      return '$hours hr';
    } else {
      return '$remainingMinutes min';
    }
  }
}
