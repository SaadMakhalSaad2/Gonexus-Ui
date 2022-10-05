import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final double width;
  final int minLines;
  final String hint;
  const RoundedInput(
      {super.key, required this.width, this.minLines = 1, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: width,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: TextField(
          minLines: minLines,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
