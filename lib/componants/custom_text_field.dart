import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.controller,  this.onTap, required this.hintText, this.clickable}) : super(key: key);
 final TextEditingController controller;
 final VoidCallback? onTap;
  final String hintText;
  final TextInputType? clickable;
  @override
  Widget build(BuildContext context) {
    return TextField(
keyboardType: clickable,
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
