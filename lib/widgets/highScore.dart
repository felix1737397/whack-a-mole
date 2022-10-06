import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';

class HighScoreButton extends StatefulWidget {
  final int index;
  final String name;
  final DateTime date;
  final int score;
  const HighScoreButton(this.index, this.name, this.date, this.score,
      {Key? key})
      : super(key: key);

  @override
  State<HighScoreButton> createState() => _HighScoreButtonState();
}

class _HighScoreButtonState extends State<HighScoreButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.8,
        color: (widget.index.isEven) ? Color(0xff383838) : Colors.grey,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((widget.date.day).toString() +
                "/" +
                (widget.date.month).toString() +
                "/" +
                (widget.date.year).toString()),
          ),
          Text(widget.name),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.score.toString()),
          ),
        ]),
      ),
    );
  }
}
