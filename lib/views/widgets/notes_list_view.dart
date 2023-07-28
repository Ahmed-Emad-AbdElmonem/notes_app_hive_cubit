import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_Note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
     
    return BlocBuilder<NotesCubit,NoteState>(
       builder: (context, state) {
        List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notess!;
       return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notes.length,
          itemBuilder: (BuildContext context, int index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child:  NoteItem(
                noteModel: notes[index] ,
              ),
            );
          },
        ),
      );
       },
    );
  }
}