import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';

class PulsingButton extends StatefulWidget {
  final bool? fromAbout;
  const PulsingButton({Key? key, this.fromAbout}) : super(key: key);

  @override
  State<PulsingButton> createState() => _PulsingButtonState();
}

class _PulsingButtonState extends State<PulsingButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (val) {
        setState(() {
          isHover = true;
        });
      },
      onTapUp: (val) {
        setState(() {
          isHover = false;
          if (widget.fromAbout != null && widget.fromAbout == true) {
            Navigator.pop(context);
          }
        });
      },
      onTapCancel: () {
        setState(() {
          isHover = false;
        });
      },
      child: AvatarGlow(
          glowColor: Color(0xff58D1FF),
          endRadius: 60,
          child: Material(
            color: Color(0xff58D1FF),
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Color(0xff58D1FF),
              radius: (isHover) ? 60 : 30.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0d3250),
                  shape: BoxShape.circle,
                ),
                height: 12,
                width: 12,
              ),
            ),
          )),
    );
  }
}
