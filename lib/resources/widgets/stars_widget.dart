import 'package:flutter/material.dart';

class StarWidget extends StatefulWidget {
  const StarWidget({super.key});

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  int mark = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => InkWell(
          onTap: () {
            setState(() {
              mark = index + 1;
            });
          },
          child: Star(enabled: mark >= index + 1),
        ),
      ),
    );
  }
}

class Star extends StatelessWidget {
  const Star({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return enabled
        ? const Icon(Icons.star, color: Colors.yellow)
        : const Icon(Icons.star_border, color: Colors.grey);
  }
}
