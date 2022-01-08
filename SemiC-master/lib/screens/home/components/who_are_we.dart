import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/constants.dart';

class WhoAreWe extends StatelessWidget {
  const WhoAreWe(
      {Key key, @required this.text, @required this.press, this.buttonText})
      : super(key: key);
  final String text;
  final String buttonText;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (buttonText != null)
              GestureDetector(
                onTap: () {},
                child: Text(buttonText),
              ),
            Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: kTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
