import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class SmallCardOne extends StatelessWidget {
  const SmallCardOne({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (width - 40) * 0.6,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFFFFB84D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 60,
            child: SvgPicture.asset(
              "images/lightbulb.svg",
              height: 80,
              width: 80,
            ),
          ),
          Positioned(
            left: 20,
            bottom: 50,
            child: Text(
              "Join top people",
              style: GoogleFonts.ptSans(
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF0E1417))),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: Text(
              "Community",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Positioned(
            left: 160,
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