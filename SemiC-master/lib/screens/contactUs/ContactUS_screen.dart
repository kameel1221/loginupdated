import 'package:flutter/material.dart';

void main() => runApp(ContactUS_screen());

class ContactUS_screen extends StatelessWidget {
  const ContactUS_screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text("تواصل معنا"),
        ),
      )),
    );
  }
}
