import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              child: SvgPicture.asset(
                "assets/images/groups_black_36dp.svg",
                height: 37,
                width: 37,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Dev Stack",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Hi dev Stack",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: const Text('18:04'),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
