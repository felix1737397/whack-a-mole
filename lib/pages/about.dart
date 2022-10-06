import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rock_paper_scissors/widgets/button.dart';
import 'package:rock_paper_scissors/widgets/pulsingButton.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              200,
              0,
              0,
            ),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                  indent: 50,
                  endIndent: 50,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                  indent: 50,
                  endIndent: 50,
                ),
                PulsingButton(
                  fromAbout: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
