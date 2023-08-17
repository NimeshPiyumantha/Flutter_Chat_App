import 'package:flutter/material.dart';
import 'package:flutter_chat_app/customUI/contact_card.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Contact',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              "256 contacts",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 26),
          ),
          PopupMenuButton<String>(
            padding: const EdgeInsets.all(0),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "Invite a friend",
                  child: Text("Invite a friend"),
                ),
                const PopupMenuItem(
                  value: "Contacts",
                  child: Text("Contacts"),
                ),
                const PopupMenuItem(
                  value: "Refresh",
                  child: Text("Refresh"),
                ),
                const PopupMenuItem(
                  value: "Help",
                  child: Text("Help"),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ContactCard(),
        ],
      ),
    );
  }
}
