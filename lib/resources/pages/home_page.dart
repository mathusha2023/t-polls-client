import 'package:flutter/material.dart';
import 'package:t_polls_client/resources/widgets/poll_card_widget.dart';

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
              const Text("Доступные ТОПросы:"),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3,
                  crossAxisCount: width > 500 ? 2 : 1,
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
              const Text("Завершенные ТОПросы:"),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3,
                  crossAxisCount: width > 500 ? 2 : 1,
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
