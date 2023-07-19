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
        children: [
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 50, 185, 156),
              onPressed: () {},
              child: Transform.rotate(
                angle: 135 * 3.1415927 / 180,
                child: const Icon(Icons.link_rounded),
              ),
            ),
            title: const Text(
              "Create call link",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              "Share a link for your WhatsApp call",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Divider(),
          const CustomCallCard(),
        ],
      ),
    );
  }
}
