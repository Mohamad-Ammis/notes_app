import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(icon: Icons.done,title: "Edit Notes",),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hintText: 'title'),
          CustomTextField(
            hintText: "Content",
            maxLines: 7,
          )
        ],
      ),
    );
  }
}
