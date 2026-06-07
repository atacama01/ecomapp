import 'package:ecomapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class Customtextloginorsignup extends StatelessWidget {
  final String text;
  final String textRoute;
  final Function()? onTap;
  const Customtextloginorsignup({
    super.key,
    required this.text,
    required this.textRoute,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(color: AppColor.greyClare)),
        InkWell(
          onTap: onTap,
          child: Text(
            textRoute,
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
