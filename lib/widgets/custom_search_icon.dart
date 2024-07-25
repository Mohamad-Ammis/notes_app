import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(20, 158, 158, 158),
            borderRadius: BorderRadius.circular(16)),
        child: IconButton(onPressed: onPressed, icon: Icon(icon,color: Colors.white,)));
  }
}
