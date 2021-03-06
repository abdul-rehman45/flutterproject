import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/Constant/app_colors.dart';
import 'package:flutterproject/Utilities/utilities.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {Key? key,
      this.color,
      required this.title,
      required this.linkTitle,
      required this.navigateToClass,
      this.termAndPrivacyCall = false,
      this.url})
      : super(key: key);
  final String title, linkTitle;
  final Widget navigateToClass;
  final Color? color;
  final bool termAndPrivacyCall;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Utilities.setTextStyle(14, color: color),
        children: [
          TextSpan(text: title),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('navigate');
                  if (termAndPrivacyCall == false) {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => navigateToClass));
                  } else {
                    // AppGlobals().urlLuncher(
                    //   url: url,
                    // );
                  }
                },
              text: linkTitle,
              style: Utilities.setTextStyle(14, color: AppColors.lightGreen)
                  .copyWith(decoration: TextDecoration.underline))
        ],
      ),
    );
  }
}
