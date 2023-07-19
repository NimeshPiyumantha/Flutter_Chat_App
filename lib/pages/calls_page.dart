import 'package:flutter/material.dart';
import 'package:flutter_chat_app/customUI/custom_call_card.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_ic_call_rounded),
      ),
      body: ListView(
        children: const [
          CustomCallCard(),
        ],
      ),
    );
  }
}
