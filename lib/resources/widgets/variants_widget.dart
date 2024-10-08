import 'package:flutter/material.dart';

class VariantsWidget extends StatefulWidget {
  const VariantsWidget({super.key, required this.variants});

  final List<String> variants;

  @override
  State<VariantsWidget> createState() => _VariantsWidgetState();
}

class _VariantsWidgetState extends State<VariantsWidget> {
  int? checked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.variants.length,
        (index) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: checked == index,
              onChanged: (bool? value) {
                setState(() {
                  if (value == true) checked = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
