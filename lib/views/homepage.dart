import 'package:flutter/material.dart';
import 'package:myportfolio/views/page1.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageViewController,
            scrollDirection: Axis.vertical,
            children: [
              page1(context),
              page1(context),
              page1(context),
              page1(context),
              page1(context),
            ],
            onPageChanged: (page) {
              _pageViewController.animateToPage(page,
                  duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
              setState(() {
                _currentIndex = page;
              });
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    carouselDots(context),
                  ],
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
      itemBuilder: (context, index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex != index ? Colors.grey : Colors.blueAccent,
          ),
        );
      },
      itemCount: 5,
    );
  }
}
