import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:gemini_chat/gemini.dart';

import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  // init gemini
  Gemini.init(apiKey: apiKey);

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat X Gemini",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
