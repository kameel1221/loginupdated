import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 45,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        onChanged: (value) {},
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'ابحث عن خدماتنا هنا',
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 9,
          ),
        ),
      ),
    );
  }
}
