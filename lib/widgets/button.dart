import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/pages/about.dart';
import 'package:rock_paper_scissors/pages/highScore.dart';
import 'package:rock_paper_scissors/pages/score_validator.dart';

class Button extends StatefulWidget {
  final String title;
  final int type;

  const Button(this.title, this.type, {Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

bool isHover = false;

Color getColor(int widget) {
  if (widget == 1 || widget == 5 || widget == 6) {
    return Color(0xff58D1FF);
  }
  return Colors.white;
}

Color getTextColor(int widget) {
  if (widget == 1 || widget == 5 || widget == 6) {
    return Colors.white;
  }
  return Colors.black;
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GestureDetector(
        onTapDown: (val) {
          setState(() {
            isHover = true;
          });
        },
        onTapUp: (val) {
          setState(() {
            isHover = false;
          });
        },
        onTapCancel: () {
          setState(() {
            isHover = false;
          });
        },
        onTap: () {
          if (widget.type == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScoreValidator()),
            );
          }

          if (widget.type == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HighScorePage()));
          }
          if (widget.type == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ));
          }
          if (widget.type == 6) {
            Navigator.pop(context);
          }
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              color: (isHover) ? getColor(widget.type) : Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color:
                      (widget.type == 1 || widget.type == 5 || widget.type == 6)
                          ? Color(0xff58D1FF)
                          : Colors.white,
                  width: 2),
            ),
            width: (isHover)
                ? MediaQuery.of(context).size.width * 0.9
                : MediaQuery.of(context).size.width * 0.7,
            height: 60,
            child: Center(
              child: Text(widget.title,
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: (isHover)
                          ? getTextColor(widget.type)
                          : Colors.white)),
            )),
      ),
    );
  }
}
