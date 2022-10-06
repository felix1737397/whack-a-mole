import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/widgets/button.dart';
import 'package:rock_paper_scissors/widgets/highScore.dart';
import 'package:rock_paper_scissors/widgets/pulsingButton.dart';

class HighScorePage extends StatefulWidget {
  const HighScorePage({Key? key}) : super(key: key);

  @override
  State<HighScorePage> createState() => _HighScorePageState();
}

class _HighScorePageState extends State<HighScorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFF0d3250),
            image: DecorationImage(
              image: Svg("assets/images/backgroundPattern.svg",
                  size: Size.square(35)),
              opacity: 0.3,
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("HIGHSCORES",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                  for (var i = 0; i < 10; i++)
                    HighScoreButton(i, "name", DateTime.now(), 0),
                  Button("BACK TO MENU", 6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
