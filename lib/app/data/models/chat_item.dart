// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChatItem {
  String content;
  String? image;
  bool isBot;
  ChatItem({
    required this.content,
    this.image,
    required this.isBot,
  });
}
