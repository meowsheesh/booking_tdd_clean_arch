import 'package:flutter/material.dart';

Widget MyTextFormField(String label){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        color: Color(0xffF6F6F9),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Color(0xffA9ABB7),),
            border: InputBorder.none),
      ),
    ),
  );
}