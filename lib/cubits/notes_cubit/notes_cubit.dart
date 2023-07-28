import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitialState());

  List<NoteModel>? notess;
  fettchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notess = notesBox.values.toList();

    emit(NoteSuccessState(notess!));
  }
}
