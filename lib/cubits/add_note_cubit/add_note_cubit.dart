import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';

//part 'add_note_states.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitialState());

  Color color = Colors.red;

  addNote(NoteModel note) async {
    note.color = color.value;

    emit(AddNoteLoadingState());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);

      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }
}
