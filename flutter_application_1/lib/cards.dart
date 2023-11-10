import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  const Mycard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              size: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(value),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
