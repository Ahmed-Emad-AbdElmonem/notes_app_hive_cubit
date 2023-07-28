

import 'package:notes_app/models/note_model.dart';

abstract class NoteState {}

class NoteInitialState extends NoteState {}

class NoteLoadingState extends NoteState {}

class NoteSuccessState extends NoteState {
  final List <NoteModel> notes;

  NoteSuccessState(this.notes);
}

