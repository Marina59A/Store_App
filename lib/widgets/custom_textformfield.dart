import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {required this.hintText,
      /*required this.mycontroller */ this.icon,
      required Null Function(dynamic data) onChanged,
      this.inputType
      /* this.obscureText=false*/
      });
  String hintText;
  //final TextEditingController mycontroller;
  final Icon? icon;
  //bool ? obscureText;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      //  obscureText: obscureText!,
      /*validator: (value) {
        if (value!.isEmpty) {
          return "Faild is Required";
        }
      },*/ //controller: mycontroller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.black,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.black,
            )),
        suffix: icon,
      ),
    );
  }
}
