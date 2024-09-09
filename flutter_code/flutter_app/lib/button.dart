import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
  });

  final Color color;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(24.0),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 50.0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lightbulb,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
