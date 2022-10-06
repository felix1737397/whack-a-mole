import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/widgets/button.dart';
import 'package:rock_paper_scissors/widgets/pulsingButton.dart';

class ScoreValidator extends StatefulWidget {
  const ScoreValidator({Key? key}) : super(key: key);

  @override
  State<ScoreValidator> createState() => _ScoreValidatorState();
}

class _ScoreValidatorState extends State<ScoreValidator> {
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
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 80, 0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/backIcon.png')),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                          child: Text(
                            "BACK: ",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    decoration: TextDecoration.underline),
                                fontSize: 20,
                                color: Color(0xff58D1FF)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 50, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/validate.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 40),
                child: Text("SCORE VALIDATOR",
                    style:
                        GoogleFonts.roboto(fontSize: 30, color: Colors.white)),
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80.0, 0, 80, 0),
                child: Row(
                  children: [
                    Text("DATE: ",
                        style: GoogleFonts.roboto(
                            fontSize: 24, color: Colors.white)),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "DD/MM/YYYY",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80.0, 0, 80, 0),
                child: Row(
                  children: [
                    Text("NAME: ",
                        style: GoogleFonts.roboto(
                            fontSize: 24, color: Colors.white)),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "DD/MM/YYYY",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80.0, 0, 80, 0),
                child: Row(
                  children: [
                    Text("SCORE: ",
                        style: GoogleFonts.roboto(
                            fontSize: 24, color: Colors.white)),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "DD/MM/YYYY",
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Button("VALIDATE SCORE", 5),
              Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Score exist: ",
                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
