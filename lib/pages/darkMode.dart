import 'package:flutter/material.dart';
import 'package:raheeassignment/widgets/bigCard.dart';
import 'package:raheeassignment/widgets/smallCardOne.dart';
import 'package:raheeassignment/widgets/smallCardTwo.dart';
import 'package:raheeassignment/widgets/greyCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raheeassignment/widgets/darkGreyCard.dart';
import 'package:raheeassignment/pages/lightMode.dart';

class DarkMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
//                  Icon(
//                    Icons.sort,
//                    color: Color(0xFF0E1417),
//                    size: 40,
//                  ),
                  PopupMenuButton(
                    offset: Offset(0.0 , 0.0),
                    padding: EdgeInsets.all(0.0),
//                      icon: Icon(
//                        Icons.sort,
//                        color: Color(0xFF0E1417),
//                        size: 40,
//                      ),
                    child: Icon(
                      Icons.sort,
                      color: Colors.white,
                      size: 40,
                    ),
                    onSelected: (String result){
                      switch(result) {
                        case 'light':
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                              LightMode()), (Route<dynamic> route) => false);
                          break;
                        case 'dark':
                          print("Dark Mode");
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      PopupMenuItem(
                        value: 'light',
                        child: Text("Light"),
                      ),
                      PopupMenuItem(
                        value: "dark",
                        child: Text("Dark"),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Hey, ",
                    style: GoogleFonts.ptSans(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Danijela",
                    style: GoogleFonts.ptSans(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Welcome to CoMent. find topic that interests you",
                style: GoogleFonts.ptSans(
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  physics: BouncingScrollPhysics(),
                  children: [
                    BigCard(width: width),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallCardOne(width: width),
                        SmallCardTwo(width: width)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DarkGreyCard(
                      width: width,
                      title: "\"Stop living in dark\"",
                      subtitle: "Finish reading the story about Denis Martin",
                      percent: 0.64,
                      message: "Hoooora, you have read ",
                      icon: Icon(
                          Icons.book_sharp,
                          size: 35,
                          color: Color(0xFFA8B3BE),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DarkGreyCard(
                      width: width,
                      title: "\"Danijela in the wonderland\"",
                      subtitle: "Finish writing your article",
                      percent: 0.30,
                      message: "Hoooora, you have written ",
                      icon: Icon(
                        Icons.assignment,
                        size: 35,
                        color: Color(0xFFA8B3BE),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
