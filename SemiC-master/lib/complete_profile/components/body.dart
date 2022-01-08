import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

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
                SizedBox(height: 30),
                Text("أكمال الملف الشخصي"),
                Text(
                  " أكمل بياناتك او \nاكمل ببرامج التواصل الإجتماعي",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 66),
                CompleteProfileForm(),
                SizedBox(height: 30),
                Text(
                  "بالأستمرار انت تقر على الموافقه\nعلى الشروط الأحكام",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
