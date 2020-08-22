import 'package:flutter/material.dart';
import 'package:grocery/utils/strings.dart';
import 'package:grocery/utils/text%20style.dart';

class CustomAppBar extends StatelessWidget {
  final double opacity;

  const CustomAppBar({Key key, this.opacity = 0.8}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        padding: EdgeInsets.only(
          top: 48,
          left: 16,
          right: 16,
        ),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: Strings.App_Name,
                    style: TextStyles.appNameTextStyle,
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: Strings.Tag_Line,
                    style: TextStyles.tagLineTextStyle,
                  ),
                  TextSpan(
                    text: Strings.Start_Enjoying,
                    style: TextStyles.bodyTextStyle,
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
