import 'package:flutter/material.dart';

class CustomtextBodyeauth extends StatelessWidget {
  final String text;
  const CustomtextBodyeauth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
      textAlign: TextAlign.center,
    );
  }
}
