import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/common/custom_app.dart';
import 'package:grocery/common/subscription_container.dart';
import 'package:grocery/screens/dashboard.dart';
import 'package:grocery/utils/strings.dart';
import 'package:grocery/utils/text%20style.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Text(
                  Strings.chooseAPlan,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                  text: Strings.weekSubscription,
                  amount: "1.99",
                  imagePath: "assets/images/tomatoe.jpg"),
              SubscriptionContainer(
                  text: Strings.oneMonthSubscription,
                  amount: "4.39",
                  imagePath: "assets/images/onion2.webp"),
              SubscriptionContainer(
                  text: Strings.threeMonthSubscription,
                  amount: "9.99",
                  imagePath: "assets/images/hoho.jpg"),
              SubscriptionContainer(
                  text: Strings.sixMonthSubscription,
                  amount: "13",
                  imagePath: "assets/images/garlic.jpg"),
              SubscriptionContainer(
                  text: Strings.fourMonthSubscription,
                  amount: "13",
                  imagePath: "assets/images/chillie.jpeg"),
            ],
          ),
          Positioned(
            bottom: 22,
            left: 16,
            child: Text(
              Strings.last_step_to_enjoy,
              style: TextStyles.buttonTextStyle,
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DashBoardScreen(),
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
