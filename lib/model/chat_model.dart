class ChatModel {
  final String? name;
  final String? icon;
  final bool? isGroup;
  final String? time;
  final String? currentMessage;
  final String? status;
  bool select = false;
  final int? id;

  ChatModel({
    this.name,
    this.icon,
    this.isGroup,
    this.time,
    this.currentMessage,
    this.status,
    this.select = false,
    this.id,
  });
}
