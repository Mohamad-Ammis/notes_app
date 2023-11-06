import 'package:flutter/material.dart';
import 'package:notesapp/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText,  this.maxLines=1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            enabledBorder: buildBorder(color: Colors.white),
            focusedBorder: buildBorder(color: kPrimaryColor),
            hintText: hintText,
            ),
      ),
    );
  }
}

OutlineInputBorder buildBorder({required Color color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.circular(8),
  );
}
