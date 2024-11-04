import 'package:flutter/material.dart';
import 'package:learning_app/views/chat/chat_page.dart';
import 'package:learning_app/views/explore/explore_page.dart';
import 'package:learning_app/views/home/home_page.dart';
import 'package:learning_app/views/profile/profile_page.dart';

import '../presentation/core/color.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int itemSelectedIndex = 0;

  final List<String> titlesList = ["Home", "Explore", "Chats", "Profile"];

  final List<Widget> pages = [
   HomePage(),
    const ExplorePage(),
    const ChatPage(),
    const ProfilePage()
  ];

  void onItemTapped(int value) {
    setState(() {
      itemSelectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: AppColor.primaryBackgroundLight,
         elevation: 0,
          leading: const Icon(Icons.settings_outlined),
          title: Text(titlesList[itemSelectedIndex], style: const TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () {},
            ),
          ]),
      body: pages[itemSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: AppColor.primaryBackgroundLight,
          currentIndex: itemSelectedIndex,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: Colors.grey,
          onTap: onItemTapped,
          items: [
            BtNItem('Home', Icons.home),
            BtNItem('Explore', Icons.explore),
            BtNItem('Chart', Icons.chat),
            BtNItem('Profile', Icons.person_2_outlined),
          ]),
    );
  }

  BottomNavigationBarItem BtNItem(String label, IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
