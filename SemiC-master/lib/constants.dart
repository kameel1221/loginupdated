import 'package:flutter/material.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0xFFF3393d0);
const kSecondaryColor = Color(0xFFF77c2c8);
const kThirdColor = Color(0xFFF253b93);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "الرجاء ادخال البريد الإلكتروني";
const String kInvalidEmailError = "الرجاء أدخال بريد إلكتروني صالح";
const String kPassNullError = "الرجاء إدخال كلمة المرور";
const String kShortPassError = "كلمة المرور قصيرة جداًًَ";
const String kMatchPassError = "كلمة المرور لا تتطابق";
const String kNamelNullError = "الرجاء ادخال الأسم";
const String kPhoneNumberNullError = "الرجاء أدخال رقم الهاتف";
const String kAddressNullError = "الرجاء ادخال العنوان";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
