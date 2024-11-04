// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/presentation/core/color.dart';
import 'package:learning_app/widgets/custom_btn.dart';

import '../../models/onlinecourse.dart';

// ignore: must_be_immutable
class CourseDetailsScreen extends StatelessWidget {
  OnlineCourse course;
  CourseDetailsScreen({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackgroundLight,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              course.instructor,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Center(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    size: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              course.description,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Text("Course Details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Chip(
                  //rec shape
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                   // side: BorderSide(color: Colors.grey[300]),
                  ),
                  backgroundColor: AppColor.primary.withOpacity(0.3),
                  label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.timer_outlined, color: AppColor.primary, size: 16,),
                    Text(formatDuration(course.duration), style: TextStyle(fontSize: 15),),
                  ],
                ))
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customBox("Chapters", course.lessons.length * 2),
                customBox("Exams", course.lessons.length),
                customBox("Rewards", course.lessons.length * 2),
              ],
            ),
            const Spacer(),
            Center(child: CustomBtn(label: "Start Course", function: () {})),
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

  Widget customBox(String name, int number) {
    return Flexible(
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColor.primary,
              width: 1,
              style: BorderStyle.solid,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString(),
                style: TextStyle(color: Colors.blue[800], fontSize: 22)),
            const SizedBox(height: 4),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
