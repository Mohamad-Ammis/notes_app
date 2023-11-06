import 'package:flutter/material.dart';
import 'package:notesapp/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor,
      ),
    );
  }
}
