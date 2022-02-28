import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  @override
  Widget navItem({required String title, required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff1D1E3C),
              fontWeight:
                  selectedIndex == index ? FontWeight.w500 : FontWeight.w300,
            ),
          ),
          Container(
            width: 66,
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectedIndex == index
                  ? Color(0xffFE998D)
                  : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/img/background.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/img/logo.png",
                        height: 40,
                        width: 72,
                      ),

                      // NOTE: NAVIGATION
                      Row(
                        children: [
                          navItem(title: "Guides", index: 0),
                          SizedBox(width: 50),
                          navItem(title: "Pricing", index: 1),
                          SizedBox(width: 50),
                          navItem(title: "Team", index: 2),
                          SizedBox(width: 50),
                          navItem(title: "Stories", index: 3),
                        ],
                      ),
                      Image.asset(
                        "assets/img/btn.png",
                        height: 60,
                        width: 100,
                      ),
                    ],
                  ),
                  // NOTE : CONTENT
                  SizedBox(height: 75),
                  Image.asset(
                    "assets/img/illustration.png",
                    width: 550,
                  ),

                  // NOTE : FOOTER
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFE998D),
                        ),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 13),
                      Text(
                        "Scroll to Learn More",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
