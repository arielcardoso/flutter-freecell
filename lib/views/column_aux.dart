import 'package:flutter/material.dart';
import 'package:freecell/views/slot.dart';

class ColumnAux extends StatefulWidget {
  ColumnAux({Key key}) : super(key: key);

  @override
  _ColumnAuxState createState() => _ColumnAuxState();
}

class _ColumnAuxState extends State<ColumnAux> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Slot(),
        Slot(),
        Slot(),
        Slot(),
      ],
    );
  }
}