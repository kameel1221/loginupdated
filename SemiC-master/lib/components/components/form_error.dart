import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Directionality formErrorText({String error}) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/Error.svg",
            height: 15,
            width: 15,
          ),
          SizedBox(
            width: 5,
            height: 5,
          ),
          Text(error),
        ],
      ),
    );
  }
}
