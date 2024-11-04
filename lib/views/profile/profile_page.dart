import 'package:flutter/material.dart';

import '../../presentation/core/color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                width: 100,
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/u2.jpeg'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
              const Text('John Doe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 12,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text("Courses")
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black54,
                    thickness: 1,
                    width: 20,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "15",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text("Mentors")
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.black54,
                    thickness: 1,
                    width: 20,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "38",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text("Friends")
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey[200],
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.settings_outlined),
                title: Text("Preferences"),
                subtitle: Text("Themes, Settings"),
              ),
              Divider(
                color: Colors.grey[200],
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.notifications_outlined),
                title: Text("Notification"),
                subtitle: Text("Ringtong, Message, Notification"),
              ),
              Divider(
                color: Colors.grey[200],
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.help_outline),
                title: Text("Help"),
                subtitle: Text("Contact Us"),
              ),
              Divider(
                color: Colors.grey[200],
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.error_outline),
                title: Text("About"),
                subtitle: Text("About the application"),
              ),
              Divider(
                color: Colors.grey[200],
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                subtitle: Text("Exit from your account"),
              ),
              Divider(
                color: Colors.grey[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
