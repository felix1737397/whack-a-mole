import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/widgets/button.dart';
import 'package:rock_paper_scissors/widgets/pulsingButton.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage(this.title, {Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
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
          child: Column(children: [
            PulsingButton(),
            Text("WHACK-A-MOLE",
                style: GoogleFonts.roboto(fontSize: 30, color: Colors.white)),
            Text("EVERY TAP MATTERS",
                style:
                    GoogleFonts.roboto(fontSize: 18, color: Color(0xff58D1FF))),
            Button("NEW GAME", 1),
            Button("HIGH SCORES", 2),
            Button("SCORE VALIDATOR", 3),
            Button("ABOUT", 4),
          ]),
        ),
      )),
    );
  }
}
