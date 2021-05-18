import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class DarkGreyCard extends StatelessWidget {
  const DarkGreyCard({
    Key key,
    @required this.width,
    @required this.title,
    @required this.percent,
    @required this.subtitle,
    @required this.message,
    @required this.icon,
  }) : super(key: key);

  final double width;
  final String subtitle;
  final double percent;
  final String title;
  final String message;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 40,
      height: 200,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
//          color: Color(0xFF4B444B)
            color: Color(0xFF32373A),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Icon(
                Icons.more_vert,
                size: 35,
                color: Color(0xFFA8B3BE),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            style: GoogleFonts.ptSans(
              textStyle: TextStyle(
                fontSize: width>400?15:12,
                color: Color(0xFFA8B3BE),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width>400?20:17,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          LinearPercentIndicator(
            width: width - 80,
            lineHeight: 8.0,
            percent: percent,
            //progressColor: Color(0xFFA8B3BE),
            progressColor: Color(0xFF646465),
            backgroundColor: Color(0xFFEEEEEE),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                message,
                style: GoogleFonts.ptSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    color: Color(0xFFA8B3BE),
                  ),
                ),
              ),
              Text(
                "${(percent*100).toInt()}%",
                style: GoogleFonts.ptSans(
                  textStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
