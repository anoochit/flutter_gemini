import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool waiting = false.obs;
  RxList<Content> chats = <Content>[].obs;
}
