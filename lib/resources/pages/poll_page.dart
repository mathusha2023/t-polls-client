import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/answer_widget.dart';

class PollPage extends StatefulWidget {
  PollPage({super.key});

  final Map poll = {
    "title": "AJSJHDHA",
    "variants": [
      "1VARIANT",
      "2VARIANT",
      "3VARIANT",
      "4VARIANT",
      "5VARIANT",
    ]
  };

  @override
  State<PollPage> createState() => _PollPageState();
}

class _PollPageState extends State<PollPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: width > 800 ? 800 : width,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(widget.poll["title"]),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.poll["variants"].length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: AnswerWidget(
                        num: index + 1,
                        text: widget.poll["variants"][index],
                      ),
                    ),
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
