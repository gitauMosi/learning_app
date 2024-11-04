import 'package:flutter/material.dart';
import 'package:learning_app/presentation/core/color.dart';
import 'package:learning_app/presentation/data/data.dart';
import 'package:learning_app/widgets/chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFE0E7FF), // Light purple background color
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Row(
            children: [
              Icon(Icons.search, color: Colors.black54),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search ...",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none,
                  ),
                ),
              ),
            
            ],
          ),
              ),
          
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index)=>MessageTile(message: messages[index])),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        //shape: CircleBorder(),
        backgroundColor: const Color(0xFFE0E7FF),
        tooltip: "New Message",
        child: Icon(Icons.message_outlined, color: AppColor.primary,),
        ),
    );
  }
}