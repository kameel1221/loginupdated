import 'package:flutter/material.dart';
import 'package:plant_app/components/components/no_account_text.dart';
import 'package:plant_app/components/components/socal_card.dart';

import 'sign_form.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 11),
                Text(
                  "أهلا بعودتك",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "سجل الدخول بالبريد الالكتروني ورمز المرور  \n ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 66),
                SignForm(),
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
