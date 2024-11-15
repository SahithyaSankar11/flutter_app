
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  //const MyTextField({super.key});
  final controller;
  final String hintText;
  final bool obscureText;


const MyTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    )
                  ),
                ),
               
               ),
             );
  }
}

