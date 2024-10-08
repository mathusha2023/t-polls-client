import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/stars_widget.dart';
import 'package:t_polls_client/tools/adaptive_size.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({super.key, required this.text, required this.num});

  final int num;
  final String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$num. $text",
          style: TextStyle(
            fontSize: AdaptiveSize.getPollFontSize(width),
          ),
        ),
        const StarWidget(),
      ],
    );
  }
}
