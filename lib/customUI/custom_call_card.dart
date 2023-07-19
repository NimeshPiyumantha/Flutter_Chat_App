import 'package:flutter/material.dart';

class CustomCallCard extends StatelessWidget {
  const CustomCallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
