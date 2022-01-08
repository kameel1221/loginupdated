import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/features_and_services/components/services/app_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/identity_and_logo_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/marketing_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/sallah_plans.dart';
import 'package:plant_app/screens/features_and_services/components/services/social_media.dart';
import 'package:plant_app/screens/features_and_services/components/services/web_plans.dart';

class ServiceList extends StatefulWidget {
  ServiceList({
    Key key,
  }) : super(key: key);
  @override
  _ServiceListState createState() => _ServiceListState();
}

int selectedPlan = 0;
var container;

class _ServiceListState extends State<ServiceList> {
  List<String> plans = [
    'باقات الشعار والهوية',
    'باقات التطبيقات',
    'باقات المواقع',
    'باقات سلة',
    'باقات التواصل الاجتماعي',
    'باقات التسويق'
  ];

  @override
  Widget build(BuildContext context) {
    if (selectedPlan == 0) {
      container = IdentityAndLogoPlans();
    } else if (selectedPlan == 1) {
      container = AppPlans();
    } else if (selectedPlan == 2) {
      container = WebPlans();
    } else if (selectedPlan == 3) {
      container = SallahPlans();
    } else if (selectedPlan == 4) {
      container = SocialMediaPlans();
    } else if (selectedPlan == 5) {
      container = MarketingPlans();
    }
    return Column(
      children: [
        Container(
          height: 60,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              itemCount: plans.length,
              itemBuilder: (context, index) => buildPlan(index, context),
            ),
          ),
        ),
        container
      ],
    );
  }

  Padding buildPlan(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedPlan = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              plans[index],
              style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == selectedPlan
                      ? Colors.black
                      : Colors.black.withOpacity(.4)),
            ),
            Container(
              height: 6,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedPlan
                    ? kSecondaryColor
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
