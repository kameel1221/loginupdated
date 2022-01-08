import 'package:flutter/material.dart';
import 'package:plant_app/screens/features_and_services/components/plan_cards.dart';

class PlanList extends StatelessWidget {
  const PlanList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCards(
          title: 'سيمي بيسك',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'باقة تقدم لك تصميم ابداعي باقل تكلفة',
          press: () {},
        ),
        SizedBox(height: 20),
        PlanCards(
          title: 'سيمي برو',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'باقة تقدم لك تصميم اكثر تناسقًا مع رغباتك',
          press: () {},
        ),
        SizedBox(height: 20),
        PlanCards(
          title: '+سيمي برو',
          image: 'assets/images/semiksa_drawer.jpg',
          description: 'بافة تقدم لك تصميم ابداعي ورائع',
          press: () {},
        ),
      ],
    );
  }
}
