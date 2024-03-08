import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.title, required this.onPressed});
  String title;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        child: MaterialButton(
          height: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: const Color.fromARGB(255, 44, 3, 52),
          textColor: Colors.white,
          onPressed: onPressed,
          child: Text(title),
        ),
      ),
    );
  }
}
