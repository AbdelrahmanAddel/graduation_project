import 'package:flutter/material.dart';
import 'package:gradtion_project/feature/chat_bot/presentation/chat_bot_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
   
      ),
      home: const ChatBotBody(),
    );
  }
}

