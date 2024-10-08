import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/stars_widget.dart';
import 'package:t_polls_client/tools/adaptive_size.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(
      {super.key,
      required this.text,
      required this.num,
      required this.variants});

  final int num;
  final String text;
  final List<String> variants;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
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
