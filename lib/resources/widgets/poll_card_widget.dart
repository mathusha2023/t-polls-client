import 'package:flutter/material.dart';

class PollCardWidget extends StatelessWidget {
  const PollCardWidget({super.key, required this.text, this.completed = false});

  final String text;
  final bool completed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: completed ? null : () {},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: completed ? Colors.grey : Colors.yellow,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(),
        ),
      ),
    );
  }
}
