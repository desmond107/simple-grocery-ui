import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/common/custom_app.dart';
import 'package:grocery/utils/strings.dart';
import 'package:grocery/utils/text%20style.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/veg2.jpg",
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fitHeight,
                  ),
                  Column(
                    children: <Widget>[
                      CustomAppBar(
                        opacity: 1,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.6),
                          child: Text(
                            Strings.WelcomeToVegyWorld,
                            style: TextStyles.bigHeadingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.60,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      Strings.relatedToYou,
                      style: TextStyles.buttonTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      Strings.quickCategories,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/veg3.jpg",
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.veg1,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/veg4.jpg",
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.veg2,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8C5835),
                              ),
                              child: Image.asset(
                                "assets/images/veg5.jpg",
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.veg3,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF8c5835),
                              ),
                              child: Image.asset(
                                "assets/images/veg1.jpg",
                                height: 50,
                                width: 50,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              Strings.veg4,
                              style: TextStyles.body2TextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
