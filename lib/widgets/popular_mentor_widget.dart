import 'package:flutter/material.dart';
import 'package:learning_app/models/user.dart';

import '../presentation/core/color.dart';

// ignore: must_be_immutable
class CustomPopularmentor extends StatelessWidget {
  User user;
   CustomPopularmentor({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
           CircleAvatar(
            radius: 25,
            backgroundColor: AppColor.primary.withOpacity(0.3),
            backgroundImage: AssetImage(user.avatar),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              
            ),
          ),
          Text(user.name)
        ],
      ),
    );
  }
}