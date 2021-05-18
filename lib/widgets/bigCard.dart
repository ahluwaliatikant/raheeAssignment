import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 40,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF66B6F9),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: SvgPicture.asset(
              "images/bigCardImage.svg",
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            left: 20,
            bottom: 80,
            child: Text(
              "The current hottest topics",
              style: GoogleFonts.ptSans(
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF0E1417))),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 35,
            child: Text(
              "79 stories",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Positioned(
            left: 185,
            bottom: 45,
            child: FaIcon(
              FontAwesomeIcons.arrowRight,
            ),
          ),
        ],
      ),
    );
  }
}