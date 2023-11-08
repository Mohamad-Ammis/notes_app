import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key,required this.icon});
  final IconData icon;
  @override
  Widget build(context) {
    return Container(
              decoration: BoxDecoration(
                  color:const  Color.fromARGB(20, 158, 158, 158),
                  borderRadius: BorderRadius.circular(16)),
              child: IconButton(onPressed: () {}, icon: Icon(icon)));
  }
}