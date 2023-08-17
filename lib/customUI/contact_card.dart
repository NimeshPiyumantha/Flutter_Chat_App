import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.blueGrey[200],
          child: SvgPicture.asset(
            "assets/images/person.svg",
            height: 30,
            width: 30,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Nimesh",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text("A full stack developer"),
      ),
    );
  }
}
