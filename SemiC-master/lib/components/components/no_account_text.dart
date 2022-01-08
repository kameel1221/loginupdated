import 'package:flutter/material.dart';
import 'package:plant_app/sign_up/sign_up_screen.dart';

import '/constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(" التسجيل ",
              style: TextStyle(fontSize: 16, color: kPrimaryColor),
              textDirection: TextDirection.rtl),
        ),
        Text(
          "لا تملك حساب؟",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
