import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget NoteFormFeild({
  required String text,
  int? maxline,
}) => TextFormField(
  maxLines: maxline,
  cursorColor: Colors.orange,
  decoration: InputDecoration(
    label: Text(
      text,
    ),
    labelStyle: TextStyle(color: Colors.grey[600]),
    enabledBorder: OutlineInputBorder(
      borderSide: new BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide:
      const BorderSide(color: Colors.orange, width: 2.0),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 3,
        color: Colors.red,
      ),
      borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
    ),
  ),
);

Widget Button({
  required String text,
}) => ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.grey),

  ),
  onPressed: (){},
  child: Text(text),);