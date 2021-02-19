import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Color _playButtonColor = Colors.white;
  @override
  Widget build(BuildContext context) {
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
          Container(
            child: Column(
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
                          MediaQuery.of(context).size.width < 800
                              ? TextSpan(
                                  text: "\nI'm\nSambit",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 72,
                                    ),
                                  ),
                                )
                              : TextSpan(
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
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Divider(
                          height: 100, thickness: 1, color: Colors.white),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    InkWell(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: _playButtonColor,
                        child: Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            color: Color(0xff1C1C1C),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 32,
                            color: _playButtonColor,
                          ),
                        ),
                      ),
                      onHover: (value) {
                        setState(() {
                          _playButtonColor =
                              value ? Colors.blueAccent : Colors.white;
                        });
                      },
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    InkWell(
                      child: Text(
                        "Watch Resume",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: _playButtonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onHover: (value) {
                        setState(() {
                          _playButtonColor =
                              value ? Colors.blueAccent : Colors.white;
                        });
                      },
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
