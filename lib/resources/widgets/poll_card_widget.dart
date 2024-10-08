import 'package:flutter/material.dart';
import "package:t_polls_client/resources/pages/poll_page.dart";
import 'package:t_polls_client/tools/adaptive_size.dart';

class PollCardWidget extends StatelessWidget {
  const PollCardWidget({super.key, required this.text, this.completed = false});

  final String text;
  final bool completed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: completed
          ? null
          : () {
              openPageLeftToRight(context, PollPage());
            },
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: completed ? Colors.grey : Colors.yellow,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  void openPageLeftToRight(BuildContext context, Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(
            begin: begin,
            end: end,
          );
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}
