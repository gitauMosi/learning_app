import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/auth/signup_page.dart';
import 'package:learning_app/presentation/core/color.dart';
import 'package:learning_app/widgets/custom_btn.dart';

import '../views/main_page.dart';
import '../widgets/cutom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int selectedIndex = 1;

  final _formKey = GlobalKey<FormState>();

  final List<Widget> items = [];

  @override
  void initState() {
    super.initState();
    items.addAll([
      _buildItem("assets/images/teacher.png", "Teacher", 0),
      _buildItem("assets/images/student.png", "Student", 1),
    ]);
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget _buildItem(String imagePath, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 130,
        width: 130,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: selectedIndex == index
              ? Border.all(width: 1, color: AppColor.primary)
              : null,
          color: Colors.grey.withOpacity(0.5),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  "Hello Again! \nWelcome \nback",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: AppColor.primary,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: items,
                ),
                const SizedBox(height: 36),
                CustomTextFormField(
                  labelText: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    }
                    // Simple email validation regex
                    const emailRegex = r'^[^@]+@[^@]+\.[^@]+';
                    if (!RegExp(emailRegex).hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  labelText: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomBtn(
                    label: "Sign In",
                    function: () {
                      Get.offAll(() => const MainPage());
                    }),
                const SizedBox(
                  height: 30,
                ),
                 Row(
                  children: [
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColor.primary),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        Get.to(()=>SignupPage());
                      },
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColor.primary),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
