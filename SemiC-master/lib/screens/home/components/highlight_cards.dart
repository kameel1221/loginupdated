import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/highlight.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class HighlightsCards extends StatelessWidget {
  const HighlightsCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WhoAreWe(
          text: 'امور تهمك',
          press: () {},
          buttonText: 'اعمالنا',
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          child: Row(
            children: [
              Highlights(
                  title: 'الهوية البصرية',
                  image: 'assets/images/our_work.jpg',
                  quote: '',
                  press: () {}),
              Highlights(
                  title: '%خصومات تصل الى 50',
                  image: 'assets/images/semi_1.jpg',
                  quote: '',
                  press: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
