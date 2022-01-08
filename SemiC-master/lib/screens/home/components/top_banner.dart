import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TopBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                text: '              مع سيمي؛',
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: '\n!مشاكلك تنحل',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
