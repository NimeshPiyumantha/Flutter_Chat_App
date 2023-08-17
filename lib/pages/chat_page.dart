import 'package:flutter/material.dart';
import 'package:flutter_chat_app/customUI/custom_chat_card.dart';

import '../model/chat_model.dart';
import '../screen/select_content.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chatModel = [
    ChatModel(
      name: "Nimesh",
      icon: "person.svg",
      isGroup: false,
      time: "4:00",
      currentMessage: "Hi Nimesh",
      status: "Delivered",
      id: 1,
    ),
    ChatModel(
      name: "Dev Stack",
      icon: "person.svg",
      isGroup: false,
      time: "4:30",
      currentMessage: "Hi Dev Stack",
      status: "Delivered",
      id: 2,
    ),
    ChatModel(
      name: "Dev Stack Group",
      icon: "groups.svg",
      isGroup: true,
      time: "5:00",
      currentMessage: "Hi Dev Stack Group",
      status: "Delivered",
      id: 3,
    ),
    ChatModel(
      name: "Sahil",
      icon: "person.svg",
      isGroup: false,
      time: "4:00",
      currentMessage: "Hi Sahil",
      status: "Delivered",
      id: 4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => const SelectContact(),
            ),
          );
        },
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chatModel.length,
        itemBuilder: (context, index) => CustomChatCard(
          chatModel: chatModel[index],
        ),
      ),
    );
  }
}
