import 'package:flutter/material.dart';

Widget defaultFormField({
  TextEditingController? controller,
  required TextInputType type,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
//    String? Function(String?)? ontap,
//   Function? ontap,
//  required String? Function(String?)? validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  bool isClickable = true,
  VoidCallback? suffixpressed,
  VoidCallback? ontap,
  final TextStyle? labelStyle,
  Color? color,
  final TextStyle? style,
}) =>
    TextFormField(
      //     validator: validate,
      obscureText: isPassword,
      // controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,

      onTap: ontap,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        prefixIcon: prefix != null
            ? IconButton(
                onPressed: suffixpressed,
                icon: Icon(
                  prefix,
                  color: Colors.orange,
                ))
            : null,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixpressed,
                icon: Icon(
                  suffix,
                  color: Colors.orange,
                ))
            : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.orange),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      style: style,
      cursorColor: Colors.orange,
    );

Widget DefaultElvatedButton({
  required VoidCallback ontap,
  required String text,
}) =>
    SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          primary: Colors.orange, // b
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ), // ackground// foreground
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget DefaultOutlineButton({
  required String text,
}) =>
    SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.orange,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );

Widget HorizonatalDividerWithTexr() => Row(
      children: const [
        Expanded(
          child: Divider(
            height: 5,
            indent: 15,
            endIndent: 15,
            color: Colors.black26,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(fontSize: 15),
        ),
        Expanded(
          child: Divider(
            height: 5,
            indent: 15,
            endIndent: 15,
            color: Colors.black26,
          ),
        ),
      ],
    );
