import 'package:flutter/material.dart';

import 'my_text_form_field.dart';

class RoomExpandableTile extends StatefulWidget {
  const RoomExpandableTile({Key? key}) : super(key: key);

  @override
  State<RoomExpandableTile> createState() => _RoomExpandableTileState();
}

class _RoomExpandableTileState extends State<RoomExpandableTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.blue, // here for close state
            colorScheme: const ColorScheme.light(
              primary: Colors.black,
            ),
              dividerColor: Colors.transparent
          ),
          child: ListTileTheme(
            contentPadding: EdgeInsets.all(0),
            child: ExpansionTile(
              trailing: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(13, 114, 255, 0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedRotation(
                    turns: _isExpanded ? .5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              title: Text(
                'Первый турист',
                style: TextStyle(fontSize: 22),
              ),
              children: [
                MyTextFormField('Имя'),
                MyTextFormField('Фамилия'),
                MyTextFormField('Дата рождения'),
                MyTextFormField('Гражданство'),
                MyTextFormField('Номер загранпаспорта'),
                MyTextFormField('Срок действия загранпаспорта'),
              ],
              onExpansionChanged: (expanded) {
                setState(() {
                  _isExpanded = expanded;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
