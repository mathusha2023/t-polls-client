import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/stars_widget.dart';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          children: [
            Text(widget.poll["title"]),
            Expanded(
              child: ListView.builder(
                itemCount: widget.poll["variants"].length,
                itemBuilder: (context, index) => StarWidget(),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
