import 'package:flutter/material.dart';
import 'package:notesapp/constans.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.initialValue,
      this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.label});
  String? hintText;
  String? initialValue;
  final int maxLines;
  String? label;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: (data) {
          if (data?.isEmpty ?? true) {
            return 'required field';
          }
          return null;
        },
        onChanged: onChanged,
        onSaved: onSaved,
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        initialValue: initialValue,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(16)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(16)),
          // label: Text(
          //   label!,
          //   style: TextStyle(color: Colors.white),
          // ),
        ),
      ),
    );
  }
}
