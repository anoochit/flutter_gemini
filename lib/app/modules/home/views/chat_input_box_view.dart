// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:gemini_chat/app/data/models/chat_item.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../const.dart';
import '../controllers/home_controller.dart';

class ChatInputBoxView extends GetView<HomeController> {
  ChatInputBoxView({Key? key}) : super(key: key);

  TextEditingController textMessageController = TextEditingController();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 64,
        child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Flexible(
                  child: TextFormField(
                    enabled: (controller.waiting.value) ? false : true,
                    controller: textMessageController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your message here...',
                    ),
                    onFieldSubmitted: (value) => sendMessage(
                      text: value,
                      context: context,
                    ),
                  ),
                ),
                (controller.waiting.value)
                    ? const CircularProgressIndicator()
                    : IconButton(
                        onPressed: () => sendMessage(
                            text: textMessageController.text.trim(),
                            context: context),
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
              ],
            )),
      ),
    );
  }

  sendMessage({required String text, required BuildContext context}) async {
    // TODO : sent message to gemini api
  }
}
