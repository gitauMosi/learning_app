import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/widgets/custom_btn.dart';

import '../login_page.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Nourish your \n inner skills",
                style: TextStyle(fontSize: 35),
              ),
              const Text(
                "Choose your favorite course and start learning",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomBtn(label: "Get Started", function: () {
                Get.to(()=> const LoginPage());
              })
            ],
          ),
        ),
      ),
    );
  }
}
