import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/poll_card_widget.dart';
import 'package:t_polls_client/tools/adaptive_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Доступные ТОПросы:",
                style: TextStyle(
                  fontSize: AdaptiveSize.getCaptionFontSize(width),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: AdaptiveSize.getAspectRatio(width),
                  crossAxisCount: AdaptiveSize.getGridCount(width),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 8,
                ),
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                itemBuilder: (index, context) =>
                    const PollCardWidget(text: "ASNSNA"),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Завершенные ТОПросы:",
                style: TextStyle(
                  fontSize: AdaptiveSize.getCaptionFontSize(width),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: AdaptiveSize.getAspectRatio(width),
                  crossAxisCount: AdaptiveSize.getGridCount(width),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 8,
                ),
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                itemBuilder: (index, context) => const PollCardWidget(
                  text: "ASNSNA",
                  completed: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
