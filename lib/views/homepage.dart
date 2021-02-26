import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/views/page1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageViewController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  int _currentIndex = 0;
  Color _menuIconColor = Colors.white;
  Color _emailTextColor = Colors.white;
  Color _phoneTextColor = Colors.white;
  Color _copyrightTextColor = Colors.white;
  Color _twitterIconColor = Colors.white;
  Color _facebookIconColor = Colors.white;
  Color _instagramIconColor = Colors.white;
  Color _linkedInIconColor = Colors.white;
  Color _githubIconColor = Colors.white;
  Color _whatsappIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageViewController,
            scrollDirection: Axis.vertical,
            allowImplicitScrolling: true,
            children: [
              Page1(),
              // Page1(),
              // Page1(),
              // Page1(),
              // Page1(),
              // Page1(),
              // Page1(),
              // Page1(),
              // Page1(),
            ],
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/logo.png",
                            height: 45,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width > 900
                                ? 150
                                : 50,
                          ),
                          MediaQuery.of(context).size.width > 900
                              ? InkWell(
                                  child: Text(
                                    "majhisambit2@gmail.com",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: _emailTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  onHover: (value) {
                                    setState(() {
                                      _emailTextColor = value
                                          ? Colors.blueAccent
                                          : Colors.white;
                                    });
                                  },
                                  onTap: ()async {
                                    await launch("mailto:majhisambit2@gmail.com?subject=Reach%20Sambit&body=Hello%20Sambit");
                                    
                                  },
                                )
                              : Container(),
                          MediaQuery.of(context).size.width > 900
                              ? Text(
                                  "  /  ",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 24,
                                    ),
                                  ),
                                )
                              : Container(),
                          MediaQuery.of(context).size.width > 900
                              ? InkWell(
                                  child: Text(
                                    "+91 7751992236",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: _phoneTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  onHover: (value) {
                                    setState(() {
                                      _phoneTextColor = value
                                          ? Colors.blueAccent
                                          : Colors.white;
                                    });
                                  },
                                  onTap: () async {
                                    await launch("tel:+917751992236");
                                  },
                                )
                              : Container(),
                        ],
                      ),
                      InkWell(
                        child: Icon(
                          Icons.menu,
                          size: 42,
                          color: _menuIconColor,
                        ),
                        onHover: (value) {
                          setState(() {
                            _menuIconColor =
                                value ? Colors.blueAccent : Colors.white;
                          });
                        },
                        onTap: () {
                          print(
                            MediaQuery.of(context).size.width,
                          );
                        },
                      )
                    ],
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Container(
                //       padding: EdgeInsets.only(right: 16),
                //       child: carouselDots(context),
                //       width: 40,
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Text(
                          "© Sambitraze 2021.",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: _copyrightTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        onHover: (value) {
                          setState(() {
                            _copyrightTextColor =
                                value ? Colors.blueAccent : Colors.white;
                          });
                        },
                        onTap: () {},
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: _twitterIconColor,
                            ),
                            onHover: (value) {
                              setState(() {
                                _twitterIconColor =
                                    value ? Colors.lightBlue : Colors.white;
                              });
                            },
                            onTap: () async {
                              await launch("https://twitter.com/sambitraze2");
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: _instagramIconColor,
                            ),
                            onHover: (value) {
                              setState(() {
                                _instagramIconColor =
                                    value ? Colors.redAccent : Colors.white;
                              });
                            },
                            onTap: () async {
                              await launch("https://instagram.com/sambitraze");
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: _whatsappIconColor,
                            ),
                            onHover: (value) {
                              setState(() {
                                _whatsappIconColor =
                                    value ? Colors.lightGreen : Colors.white;
                              });
                            },
                            onTap: () async {
                              await launch(
                                  "https://api.whatsapp.com/send?phone=+917751992236");
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: _linkedInIconColor,
                            ),
                            onHover: (value) {
                              setState(() {
                                _linkedInIconColor =
                                    value ? Colors.indigoAccent : Colors.white;
                              });
                            },
                            onTap: () async {
                              await launch(
                                  "https://www.linkedin.com/in/sambitraze/");
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: _facebookIconColor,
                            ),
                            onHover: (value) {
                              setState(() {
                                _facebookIconColor =
                                    value ? Colors.blue[700] : Colors.white;
                              });
                            },
                            onTap: () async {
                              await launch(
                                  "https://www.facebook.com/sambitraze/");
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.github,
                              color: _githubIconColor,
                            ),
                            onHover: (value) {
                              setState(() {
                                _githubIconColor =
                                    value ? Colors.green : Colors.white;
                              });
                            },
                            onTap: () async {
                              await launch(
                                  "https://www.github.com/sambitraze/");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget carouselDots(context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
            _pageViewController.animateToPage(_currentIndex,
                duration: Duration(milliseconds: 800),
                curve: Curves.fastOutSlowIn);
          },
          child: Container(
            width: _currentIndex == index ? 18.0 : 10.0,
            height: _currentIndex == index ? 18.0 : 10.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex != index ? Colors.white : Colors.blueAccent,
            ),
          ),
        );
      },
      itemCount: 9,
    );
  }
}
