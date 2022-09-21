import 'package:flutter/material.dart';

Widget textCustom(
    {required TextEditingController controller, required String hint}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(hintText: hint),
  );
}
