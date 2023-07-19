import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomCallCard extends StatelessWidget {
  final String title;
  final String arrow;
  final int color; // Change the type to int for ARGB color value
  final String time;
  final String icon;

  const CustomCallCard({
    Key? key,
    required this.title,
    required this.arrow,
    required this.color,
    required this.time,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          _getIconArrowWidget(), // Get the icon widget based on the arrow string and color
          const SizedBox(
            width: 3,
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
      trailing: _getIconWidget(),
    );
  }

  Widget _getIconArrowWidget() {
    switch (arrow) {
      case 'arrow_outward_rounded':
        return _getColoredIcon(Icons.arrow_outward_rounded);
      case 'arrow_inward_rounded':
        return Transform.rotate(
          angle: 180 * 3.1415927 / 180,
          child: _getColoredIcon(Icons.arrow_outward_rounded),
        );
      default:
        return _getColoredIcon(Icons.arrow_outward_rounded);
    }
  }

  Widget _getIconWidget() {
    switch (icon) {
      case 'call':
        return const Icon(
          Icons.call,
          color: Color(0xFF32B99C),
          size: 28,
        );
      case 'video_call':
        return const Icon(
          Icons.videocam,
          color: Color(0xFF32B99C),
          size: 28,
        );
      default:
        return const Icon(Icons.phone);
    }
  }

  Widget _getColoredIcon(IconData icon) {
    return Icon(
      icon,
      color: Color(color),
    );
  }
}
