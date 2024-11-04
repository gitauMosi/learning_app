// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';

import 'package:learning_app/presentation/core/color.dart';
import 'package:learning_app/presentation/data/data.dart';
import 'package:learning_app/widgets/last_seen_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<Widget> itemsWidgets = [];

  @override
  void initState() {
    super.initState();
    for (Course n in courses) {
      itemsWidgets.add(ContinueWidegt(
        n,
        courses.indexOf(n),
      ));
    }
  }

  Widget ContinueWidegt(Course course, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 150,
        width: 130,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: selectedIndex == index
              ? Border.all(width: 1, color: Colors.green)
              : null,
          color: Colors.green.withOpacity(0.3),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                course.url,
                height: 40,
                width: 40,
              ),
              Text(course.name),
              Text("Chapter ${course.chapters}"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.timer_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    " ${course.duration} mins",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<Widget> popularCourses = [
    PopularCourseWidget(
      name: "Biology",
      icon: Icons.category,
    ),
    PopularCourseWidget(
      name: "Science",
      icon: Icons.science,
    ),
    PopularCourseWidget(
      name: "Design",
      icon: Icons.design_services,
    ),
    PopularCourseWidget(
      name: "Cooking",
      icon: Icons.cookie,
    ),
    PopularCourseWidget(
      name: "Maths",
      icon: Icons.calculate,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColor.primaryBackgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColor.primary, width: 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          //spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 10))
                    ]),
                child: Row(
                  children: [
                    const Text(
                      "Upgrade your plan \n to Premium",
                      style: TextStyle(
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary),
                        child: const Text("Upgrade",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "POPULAR COURSES",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: popularCourses,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "CONTINUE LEARNING",
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
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: itemsWidgets),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "LAST SEEN COURSES",
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
                  itemCount: onlinecoursesList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => LastSeenWidget(course: onlinecoursesList[index],))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PopularCourseWidget extends StatelessWidget {
  String name;
  IconData icon;
  PopularCourseWidget({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColor.primary.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(name)
      ],
    );
  }
}
