import 'package:flutter/material.dart';
import 'package:t_polls_client/tools/adaptive_size.dart';

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
      mainAxisSize: MainAxisSize.min,
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
    double width = MediaQuery.of(context).size.width;

    return enabled
        ? Icon(Icons.star, color: Colors.yellow, size: AdaptiveSize.getStarSize(width),)
        : Icon(Icons.star_border, color: Colors.grey, size: AdaptiveSize.getStarSize(width));
  }
}
