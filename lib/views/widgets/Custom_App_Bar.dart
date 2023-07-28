import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});

  final void Function()? onPressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     const   Text('Notes',style: TextStyle(
          fontSize: 28,
        ),),
      const  Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,),
      ],
    );
  }
}
