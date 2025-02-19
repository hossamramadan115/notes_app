import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color? color = Colors.tealAccent;

  addNote(NoteModel note) {
  note.color = color!.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      noteBox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailuer(errMessage: 'there was an error'));
    }
  }
}
