import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freecell/helpers/naipes.dart';
import 'package:freecell/helpers/utils.dart';

class Slot extends StatefulWidget {
  final Naipes naipe;
  Slot({Key key, this.naipe}) : super(key: key);

  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  @override
  Widget build(BuildContext context) {

    var cardSize = Utils.getCardSize(context);
    Widget slotBg;

    if (widget.naipe == Naipes.CLUBS) {
      slotBg = SvgPicture.asset("assets/svg/clubs.svg", color: Colors.white10, width: cardSize[0]/2,);
    } else if (widget.naipe == Naipes.HEART) {
      slotBg = SvgPicture.asset("assets/svg/heart.svg", color: Colors.white10, width: cardSize[0]/2,);
    } else if (widget.naipe == Naipes.SPADE) {
      slotBg = SvgPicture.asset("assets/svg/spade.svg", color: Colors.white10, width: cardSize[0]/2,);
    } else if (widget.naipe == Naipes.DIAMOND) {
      slotBg = SvgPicture.asset("assets/svg/diamond.svg", color: Colors.white10, width: cardSize[0]/2,);
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.all(
            Radius.circular(3.0) //         <--- border radius here
        ),
      ),
      width: cardSize[0],
      height: cardSize[1],
      child: Center(
        child: slotBg,
      ),
    );
  }
}