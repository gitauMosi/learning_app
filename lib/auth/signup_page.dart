import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/auth/login_page.dart';

import '../presentation/core/color.dart';
import '../views/main_page.dart';
import '../widgets/custom_btn.dart';
import '../widgets/cutom_textfield.dart';

class SignupPage extends StatefulWidget {
   const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
    final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                 const SizedBox(height: 50),
                const Text(
                  "Welcome \nCreate Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: AppColor.primary,
                  ),
                ),
                const SizedBox(height: 20),
         
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
                const SizedBox(height: 16),
                CustomTextFormField(
                  labelText: 'Username',
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                 CustomBtn(
                    label: "Sign Up",
                    function: () {
                      if (_formKey.currentState!.validate()) {
                        // Process data if the form is valid
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Login Successfully')),
                        );
                        Get.offAll(() => const MainPage());
                      }
                    }),
                const SizedBox(
                  height: 30,
                ),
                  Row(
                  children: [
                    const Text(
                      "Have an account >",
                      
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        Get.to(()=>const LoginPage());
                      },
                      child: const Text(
                        "Log In ",
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