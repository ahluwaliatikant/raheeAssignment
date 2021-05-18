import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class SmallCardTwo extends StatelessWidget {
  const SmallCardTwo({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width - 40) * 0.35,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFFE74C12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              right: 20,
              child: Image.asset(
                "images/pencil.png",
                height: 60,
                width: 60,
              )),
          Positioned(
            left: 10,
            bottom: 50,
            child: Text(
              "Share your story",
              style: GoogleFonts.ptSans(
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF0E1417))),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 20,
            child: Text(
              "Write",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Positioned(
            left: 75,
            bottom: 23,
            child: FaIcon(
              FontAwesomeIcons.arrowRight,
            ),
          ),
        ],
      ),
    );
  }
}