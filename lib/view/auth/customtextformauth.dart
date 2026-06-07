import 'package:ecomapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData? suffixIcon;
  final TextEditingController? mycontroller;
  final TextInputType? keyboardType;
  final bool isNumber;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Function()? onTapIcon;

  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    this.suffixIcon,
    required this.mycontroller,
    this.keyboardType,
    this.onTapIcon,
    required this.isNumber,
    this.obscureText,
    required this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: mycontroller,
        keyboardType: isNumber
            ? TextInputType.numberWithOptions()
            : TextInputType.text,
        obscureText: obscureText == null || obscureText == false ? false : true,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: AppColor.grey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labelText),
          ),
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: suffixIcon != null
                  ? Icon(suffixIcon, color: AppColor.grey)
                  : null,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: AppColor.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: AppColor.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.blue, width: 1.5),
          ),
        ),
      ),
    );
  }
}
