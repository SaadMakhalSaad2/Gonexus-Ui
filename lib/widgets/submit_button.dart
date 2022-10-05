import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  const SubmitButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '   Submit   ',
                style: MyStyles().cardTitle.copyWith(color: Colors.black),
              ),
              const Icon(Icons.send)
            ],
          ),
        ),
      ),
    );
  }
}
