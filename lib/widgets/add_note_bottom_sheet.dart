import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: "Enter Your Title",
            ),
            CustomTextField(
              hintText: "Enter Your Notes",
              maxLines: 5,
            ),
            SizedBox(height: 20,),
            CustomButton(buttonText: "Add"),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
