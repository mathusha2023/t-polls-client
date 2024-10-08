import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/answer_widget.dart';
import 'package:t_polls_client/tools/adaptive_size.dart';

class PollPage extends StatefulWidget {
  PollPage({super.key});

  final Map poll = {
    "title": "AJSJHDHA",
    "variants": [
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
      {
        "title": "Variant1",
        "answers": ["sasa", "ssksksk", "akskssn", "lsksks", "skks"],
      },
    ]
  };

  @override
  State<PollPage> createState() => _PollPageState();
}

class _PollPageState extends State<PollPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: width > 800 ? 800 : width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: width > 600
                        ? const EdgeInsets.symmetric(
                            vertical: 16.0,
                          )
                        : const EdgeInsets.symmetric(
                            vertical: 0.0,
                          ),
                    child: Text(
                      widget.poll["title"],
                      style: TextStyle(
                        fontSize: AdaptiveSize.getCaptionFontSize(width),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.poll["variants"].length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: AnswerWidget(
                          num: index + 1,
                          text: widget.poll["variants"][index]["title"],
                          variants: widget.poll["variants"][index]["variants"],
                        ),
                      ),
                      shrinkWrap: true,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Отправить!",
                      style: TextStyle(
                        fontSize: AdaptiveSize.getMainFontSize(width),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
