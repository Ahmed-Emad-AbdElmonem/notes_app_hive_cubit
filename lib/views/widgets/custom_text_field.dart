import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines=1, this.onsaved, this.onChanged}) : super(key: key);
  final Function(String)? onChanged;
  final String hint;
  final int maxLines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
         return 'field is required';
          
        }else{
          return null;
        }
      },
      cursorColor:kPrimaryColor ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder:buildBorder(kPrimaryColor) ,
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color?? Colors.white,
        ),
      );
  }
}