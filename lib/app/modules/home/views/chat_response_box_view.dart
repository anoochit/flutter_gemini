import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:markdown_widget/markdown_widget.dart';

import '../controllers/home_controller.dart';

class ChatResponseBoxView extends GetView<HomeController> {
  const ChatResponseBoxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => ListView.builder(
          itemCount: controller.chats.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: (controller.chats[index].role == 'model')
                          ? const Icon(Icons.smart_toy_outlined)
                          : const Icon(Icons.account_circle_outlined),
                    ),
                    Container(
                      width: 8.0,
                    ),
                    Flexible(
                      child: MarkdownWidget(
                        shrinkWrap: true,
                        selectable: true,
                        data: '${controller.chats[index].parts?.last.text}',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0)
              ],
            );
          },
        ),
      ),
    );
  }
}
