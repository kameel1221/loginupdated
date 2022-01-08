import 'package:flutter/material.dart';
import 'package:plant_app/components/components/socal_card.dart';
// import 'package:shop_app/components/socal_card.dart';
// import 'package:shop_app/constants.dart';
// import 'package:shop_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: (30)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10), // 1%
                Text("التسجيل"),

                Text(
                  "اكمل بياناتك أو سجل عن طريق برامج التواصل الاجتماعي",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 88),
                SignUpForm(),
                SizedBox(height: 88),
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
                Text(
                  'بالأستمرار انت تقر على الموافقه\nعلى الشروط الأحكام',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
