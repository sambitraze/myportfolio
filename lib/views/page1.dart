import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget page1(context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/bg1.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Flexible(
              child: Container(),
              flex: 1,
            ),
            Text.rich(
              TextSpan(
                text: 'Howdy,',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                    fontSize: 72,
                  ),
                ),
                children: <InlineSpan>[
                  MediaQuery.of(context).size.width<800?TextSpan(
                    text: "\nI'm\nSambit",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 72,
                      ),
                    ),
                  ):TextSpan(
                    text: "I'm\nSambit",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 72,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: Container(),
              flex: 3,
            ),
          ],
        )
      ],
    ),
  );
}
