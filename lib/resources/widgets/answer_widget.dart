import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/stars_widget.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({super.key, required this.text, required this.num});
  final int num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$num. $text"),
        const StarWidget(),
      ],
    );
  }
}
