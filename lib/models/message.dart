
import 'package:learning_app/models/user.dart';

class Message {
  final String id;
  final String senderId;
  final String receiverId;
  final User user;
  final String content;
  final DateTime timestamp;
  final bool isRead;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.user,
    required this.content,
    required this.timestamp,
    this.isRead = false,
  });


}