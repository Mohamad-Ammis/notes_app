import 'package:flutter/material.dart';
import 'package:notesapp/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, this.onTap, required this.isLoading});
  final String buttonText;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        child:Center(
          child: isLoading
              ? CircularProgressIndicator(
                color: Colors.grey,
              )
              : Text(
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
      ),
    );
  }
}
