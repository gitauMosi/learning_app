import 'package:flutter/material.dart';
import 'package:learning_app/presentation/data/data.dart';
import 'package:learning_app/widgets/custom_search_bar.dart';
import 'package:learning_app/widgets/result_widget.dart';

import '../../presentation/core/color.dart';
import '../../widgets/custom_chip.dart';
import '../../widgets/popular_mentor_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Widget> mentors = [];

  @override
  void initState() {
    super.initState();
    generateMontors();
  }

  void generateMontors() {
    for (int i = 0; i < users.length; i++) {
      mentors.add(CustomPopularmentor(
        user: users[i],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomSearchBar(),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    "POPULAR MENTORS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: mentors,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    "COURSES",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Wrap(
                spacing: 3.0,
                // runSpacing: 1.0,
                children: [
                  CustomChip(label: 'Science'),
                  CustomChip(label: 'Language'),
                  CustomChip(label: 'Design'),
                  CustomChip(label: 'Programming'),
                  CustomChip(label: 'Biology'),
                  CustomChip(label: 'Mathematics'),
                  CustomChip(label: 'Coding'),
                  CustomChip(label: 'History'),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "RESULTS(5)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              ),
              ListView.builder(
                itemCount: courses.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index)=>ResultWidget(course: courses[index]))
            ],
          ),
        ),
      ),
    );
  }
}
