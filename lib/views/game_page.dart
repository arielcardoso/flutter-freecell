import 'package:flutter/material.dart';
import 'package:freecell/views/column_default.dart';
import 'package:freecell/views/column_aux.dart';
import 'package:freecell/views/column_naipe.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  int userScore = 0;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Freecell Game"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.open_with),
            tooltip: 'Moves',
            onPressed: () { },
          ),
          Container(
              padding: EdgeInsets.only(top: 18, right: 12),
              child: Text(userScore.toString(), style: TextStyle(fontSize: 18),)
          ),
          IconButton(
            icon: const Icon(Icons.watch_later),
            tooltip: 'Time',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          Container(
            padding: EdgeInsets.only(top: 18, right: 12),
            child: Text(userScore.toString(), style: TextStyle(fontSize: 18),)
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ColumnAux(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnDefault(),
            ColumnNaipe(),
          ],
        ),
      ),
    );
  }
}
