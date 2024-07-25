import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';
import 'package:notesapp/widgets/edit_note_colors_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.done,
            title: "Edit Notes",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            initialValue: widget.note.title,
            onChanged: (data) {
              title = data;
            },
            label: 'title',
          ),
          CustomTextField(
            initialValue: widget.note.subTitle,
            onChanged: (data) {
              subTitle = data;
            },
            maxLines: 7,
            label: 'Content',
          ),
          EditNoteColorsList(note: widget.note,)
        ],
      ),
    );
  }
}
