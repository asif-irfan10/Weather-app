import 'package:flutter/material.dart';
import 'package:flutter_application_1/cards.dart';

class Custom_Widget extends StatelessWidget {
  const Custom_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Mycard(label: "20°C", icon: Icons.cloud_circle, value: "Clouds"),
          Mycard(label: "30°C", icon: Icons.sunny_snowing, value: "Sunny snowing"),
          Mycard(label: "40°C", icon: Icons.water_drop_sharp, value: "Water Drops"),
          Mycard(label: "50°C", icon: Icons.mode_night, value: "Moon"),
          Mycard(label: "60°C", icon: Icons.sunny, value: "Sun"),
        ],
      ),
    );
  }
}
