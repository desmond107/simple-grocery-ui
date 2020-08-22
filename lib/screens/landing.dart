import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/common/custom_app.dart';
import 'package:grocery/screens/choose_plan.dart';
import 'package:grocery/utils/strings.dart';
import 'package:grocery/utils/text%20style.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/veg1.jpg",
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: <Widget>[
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 32.0,
                  left: 32,
                  right: 32,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.Ready_TO_buy,
                        style: TextStyles.bigHeadingTextStyle,
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.Ready_TO_buy_Desc,
                        style: TextStyles.bodyTextStyle,
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.Start_Enjoying,
                        style: TextStyles.buttonTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChoosePlanScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDAD4CC).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4, -0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white70,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
