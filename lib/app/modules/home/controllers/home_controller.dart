import 'package:gemini_chat/app/data/models/chat_item.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool waiting = false.obs;
  RxList<ChatItem> chats = <ChatItem>[].obs;
}
