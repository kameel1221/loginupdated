import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/highlight.dart';
import 'package:plant_app/screens/features_and_services/components/plan_list.dart';
import 'package:plant_app/screens/home/components/who_are_we.dart';

class AppPlans extends StatelessWidget {
  const AppPlans({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 547,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Highlights(title: 'ابداع', press: () {}, quote: ''),
              SizedBox(height: 30),
              WhoAreWe(text: 'الباقات', press: () {}),
              SizedBox(height: 20),
              PlanList(),
            ],
          ),
        ),
      ),
    );
  }
}
