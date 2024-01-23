import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'chat_input_box_view.dart';
import 'chat_response_box_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat x Gemini'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const ChatResponseBoxView(),
          const Divider(height: 0.0),
          ChatInputBoxView()
        ],
      ),
    );
  }
}
