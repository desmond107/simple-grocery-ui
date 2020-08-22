import 'package:flutter/material.dart';
import 'package:grocery/utils/text%20style.dart';

class SubscriptionContainer extends StatelessWidget {
  final String amount, text, imagePath;
  const SubscriptionContainer({
    Key key,
    this.amount,
    this.text,
    this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.transparent.withOpacity(0.1),
                BlendMode.srcATop,
              ),
              child: Image.asset(
                imagePath,
                height: 88,
                width: width - 32,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 20,
            right: 20,
            child: Row(
              children: <Widget>[
                Text(text, style: TextStyles.subscriptionTextStyle),
                Spacer(),
                Text("\$$amount",
                    style: TextStyles.subscriptionAmountTextStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
