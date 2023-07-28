import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/Custom_App_Bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
 @override
 void initState() {
  BlocProvider.of<NotesCubit>(context).fettchAllNotes();
   super.initState();
   
 }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(
              child: NotesListView()),
          ],
        ),
      ),
    );
  }
}

