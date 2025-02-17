import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? nTitle, nSubTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.done,
            onPressed: () {
              widget.note.title = nTitle ?? widget.note.title;
              widget.note.subTitle = nSubTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 25),
          CustomTextField(
            onChanged: (value) {
              nTitle = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              nSubTitle = value;
            },
            hintText: widget.note.subTitle,
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
