import 'package:flutter/material.dart';

Widget Peculiarities(List list){
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    children: list.map((e) => Container(
      decoration: BoxDecoration(
        borderRadius : BorderRadius.circular(15
        ),
        color : Color.fromRGBO(251, 251, 252, 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(e, textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromRGBO(130, 135, 150, 1),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                height: 1.5
            ),),

        ],
      ),
    )).toList()
  );
}