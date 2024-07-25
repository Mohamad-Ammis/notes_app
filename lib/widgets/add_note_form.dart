import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/color_List_view.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: "Enter Your Title",
              onSaved: (data) {
                title = data;
              },
            ),
            CustomTextField(
              hintText: "Enter Your Notes",
              onSaved: (data) {
                subTitle = data;
              },
              maxLines: 5,
            ),
            ColorListView(),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<AddNotesCubit, AddNotesState>(
                builder: (BuildContext context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ? true : false,
                buttonText: "Add",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: BlocProvider.of<AddNotesCubit>(context).color.value );
                    BlocProvider.of<AddNotesCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            }),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

