import 'package:flutter/material.dart';
import 'package:freecell/views/slot.dart';

class ColumnDefault extends StatefulWidget {
  List<Card> cards;
  ColumnDefault({Key key, cards}) : super(key: key);

  @override
  _ColumnDefaultState createState() => _ColumnDefaultState();
}

class _ColumnDefaultState extends State<ColumnDefault> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Slot(),
      ],
    );
  }
}