import 'package:flutter/material.dart';
import 'package:freecell/helpers/naipes.dart';
import 'package:freecell/views/slot.dart';

class ColumnNaipe extends StatefulWidget {
  ColumnNaipe({Key key}) : super(key: key);

  @override
  _ColumnNaipeState createState() => _ColumnNaipeState();
}

class _ColumnNaipeState extends State<ColumnNaipe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Slot(naipe: Naipes.CLUBS),
        Slot(naipe: Naipes.HEART),
        Slot(naipe: Naipes.SPADE),
        Slot(naipe: Naipes.DIAMOND),
      ],
    );
  }
}