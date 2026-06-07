import 'package:ecomapp/core/constant/imageasset.dart';
import 'package:flutter/widgets.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.asset(AppImageAsset.logoAuth, height: 130, width: 130),
    );
  }
}
