import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


Widget defaultFormField({
  required TextEditingController? controller,
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
        prefixIcon: prefix != null ? IconButton(
            onPressed: suffixpressed,
            icon: Icon(
              prefix,
              color: Colors.orange,
            )) : null,
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
  required VoidCallback function,
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

Widget HorizonatalDividerWithText() => Row(
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

Widget textCustom(
    {
      required TextEditingController controller,
      required TextInputType type,
      required String label,
      required String? Function(String?)? validate,
      VoidCallback? suffixpressed,
      VoidCallback? prefixpressed,
      bool isPassword = false,
      IconData? prefix,
      IconData? suffix,
    }) {
  return TextFormField(
       obscureText: isPassword,
       controller: controller,
       validator: validate,
       decoration: InputDecoration(
         prefixIcon: prefix != null
             ? IconButton(
             onPressed: prefixpressed,
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
        labelText: label,
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
  );
}


void showToast({
  required String text,
  required ToastStates state,
}) => Fluttertoast.showToast(
  msg: text,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
  backgroundColor: chooseToastColor(state),
  textColor: Colors.white,
  fontSize: 16.0,
);

//enum
enum ToastStates {SUCCESS, ERROR, WARNING}

Color chooseToastColor(ToastStates state)
{
  Color color;
  switch(state)
  {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;

    case ToastStates.ERROR:
      color = Colors.red;
      break;

    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}
