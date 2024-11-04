// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:learning_app/models/course.dart';

import '../presentation/core/color.dart';

// ignore: must_be_immutable
class ResultWidget extends StatelessWidget {
  Course course;
  ResultWidget({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: CircleAvatar(
          radius: 20,
          backgroundColor: AppColor.primary.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(course.url),
          ),
        ),
        title: Text(course.name),
        subtitle: Text(course.name, style: TextStyle(fontSize: 10),),
    );
  }
}
